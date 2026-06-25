# Project Review Notes

Repository: `django-saas-ecommerce-devops`

## What I cleaned or improved

- Rebuilt the main README with a career-progression story.
- Added your requested animated footer/contact section.
- Added screenshot references. Existing snapshots were copied into `docs/screenshots` when available.
- Kept `.env`, secrets, Terraform state, kubeconfigs, and token files blocked in `.gitignore`.
- Added cleanup/cost-control commands in README.

## Review before making public

- Run the validation commands in README on your laptop.
- Replace any placeholder registry, bucket, cluster, domain, and account values with your own lab values.
- Add your own latest screenshots if this repo does not already include screenshots.
- Do not commit real cloud credentials, tokens, kubeconfigs, private keys, `.env`, or Terraform state.
## Workflow Debug Prevention

- Updated active GitHub Actions workflow triggers to `workflow_dispatch` only.
- This prevents automatic failures on push when AWS, SonarCloud, Docker, or scan credentials are not configured yet.
- Run workflows manually only after local validation and required secrets are ready.

