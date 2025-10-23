# aws-infra

Terraform modules for a small AWS infra: VPC, subnets, ALB, EC2, DNS, WAF.

Usage

1. Copy `.env.example` to `.env` (do not commit `.env`):

   cp .env.example .env

2. Set AWS credentials in your environment or use an assumed role.

3. Initialize and validate:

   terraform init
   terraform validate

CI

A GitHub Actions workflow is included under `.github/workflows/ci.yml` to run `terraform fmt` and `terraform validate`.

Contributing

- Keep secrets out of the repo. Use `.env` locally and GitHub Secrets in CI.
- Use `terraform fmt -recursive` before committing.
# aws-terraform-webapp-waf
