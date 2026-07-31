# Terraform Cloud Shared Module Repository

This Terraform code is used to populate the Terraform Cloud Private Module Repository.

Every repo listed in `modules-lists.auto.tfvars` becomes a `tfe_registry_module` in the
`Bilak` TFC organisation, pointed at the matching GitHub repo.

## Setup from scratch

### 1. Connect GitHub to TFC

TFC → Organization settings → **VCS Providers** → Add a VCS provider → GitHub.

Two options, both work; they differ in who owns the connection:

| | OAuth App | GitHub App |
|---|---|---|
| Acts as | the user who authorised it | the app installed on the org |
| Dies when | that user leaves / revokes | the app is uninstalled |
| ID used in code | `ot-...` (oauth_token_id) | `ghain-...` (github_app_installation_id) |

Currently this repo uses **OAuth** (`oauth_token_id`). Move to the GitHub App if this
stops being a solo setup — see *Switching to the GitHub App* below.

### 2. Grant the connection access to the module org

This is the step that bites. The module repos live in the **Bilak-Terraform-Modules**
GitHub org, but the OAuth app was authorised by a personal account. OAuth acts as *you*,
so TFC only sees repos you can see **and** that the org allows the app to see.

github.com → personal **Settings** → Applications → **Authorized OAuth Apps** →
HCP Terraform → *Organization access* → **Grant** next to Bilak-Terraform-Modules.

If it says *Request* instead of *Grant*, the org restricts third-party apps: approve it at
Bilak-Terraform-Modules → Settings → **Third-party Access**.

Skipping this gives `Error creating registry module ...: resource not found` on apply —
auth is fine, the repo is simply invisible.

### 3. Workspace variables

TFC → workspace `Terraform-Module-Registry` → Variables:

| Key | Category | Value |
|---|---|---|
| `org_registry_token` | **Terraform variable** | the `ot-...` OAuth Token ID from Organization settings → VCS Providers |
| `TFE_TOKEN` | **env** | **Team** API token with *Manage private registry* (yearly renewal) |

Category matters. `org_registry_token` as an *env* var does nothing — env vars only feed
Terraform variables when prefixed `TF_VAR_`. `TFE_TOKEN` must stay *env*; it is read from
the process environment by the tfe provider, not declared in the config.

`org_name` and `modules` come from `modules-lists.auto.tfvars`, not from the workspace.

## Adding a module

Add the `org/repo` path to `modules` in `modules-lists.auto.tfvars`, commit, run.

## Gotchas

**`tfe_github_app_installation` data source fails with "Team and Organization Tokens are
not supported".** That data source requires a *user* token; TFC runs authenticate with a
team/org token, so it can never work inside a run. Pass the ID in as a variable instead —
which is why this config takes `org_registry_token` rather than looking anything up.

**`TFE_TOKEN` must be a team token, not an organization token.** Org tokens cannot manage
the private registry, and TFC reports that as `resource not found` on every module — a 403
disguised as a 404. Symptom: plan succeeds, every create fails after 0s.

Create it at Organization settings → **API tokens** → type **Team** → team `owners`.
(Team tokens used to live on the team's own page; TFC moved them here.) The `owners` team
holds every org permission implicitly, so nothing needs enabling. For a non-owners team,
first tick Organization Access → **Manage private registry** on that team.

Note the same 404-for-403 habit means "resource not found" is rarely about the repo.
All modules failing = token or `ot-` id. A handful failing = those repos.

**Uninstalling the GitHub App / revoking OAuth invalidates the ID.** Reinstalling mints a
new `ghain-`/`ot-` value; a stale one gives a 404 on plan. Update the workspace variable.

**Partial apply failures are safe to retry.** Failed modules are simply absent from state,
so a plain re-apply retries exactly those and leaves the created ones alone.

## Switching to the GitHub App

Install it on the **Bilak-Terraform-Modules org**, not a personal account, then:

```hcl
# registries.tf
github_app_installation_id = var.org_registry_token   # value is now ghain-...
```

Get the ID with a *user* API token (TFC → User settings → Tokens) from any machine:

```powershell
$h = @{ Authorization = "Bearer <user-token>" }
(Invoke-RestMethod -Uri "https://app.terraform.io/api/v2/github-app/installations" -Headers $h).data |
  Select-Object id, @{n='name';e={$_.attributes.name}}
```

Swapping the VCS connection forces replacement of every registry module.
