# Deployment guide

This document is for safe review and local deployment of Search123. It is intentionally written as an operational guide, not a production deployment checklist.

## Scope

This repository includes a ready-to-review SearXNG setup under `searxng/`:

- `searxng/config/settings.yml`
- `searxng/templates/simple/base.html`
- `searxng/docker-compose.yml`
- `searxng/.env.example`

These files are example infrastructure for self-hosted review and should be verified before any live exposure.

## Prerequisites

- Docker Engine
- Docker Compose v2 or equivalent
- a valid domain or reverse-proxy layer if the instance will be publicly exposed
- a secure `SEARXNG_SECRET` value

## Quick start

1. Copy the sample environment file:

   ```bash
   cp searxng/.env.example searxng/.env
   ```

2. Edit `searxng/.env` and set a unique cryptographically random `SEARXNG_SECRET` (for example, generate one locally using `openssl rand -hex 32`). Never commit `.env`. The Compose configuration refuses an empty key. Confirm that your selected SearXNG image consumes `SEARXNG_SECRET` as intended; otherwise provision the secret in a local untracked configuration.

3. Update `SEARXNG_BASE_URL` to match your actual public URL. The custom template is mounted read-only from `searxng/templates/simple/base.html`; verify compatibility with the exact upstream SearXNG image before use.

4. Validate the Compose file before starting:

   ```bash
   docker compose --env-file searxng/.env -f searxng/docker-compose.yml config --quiet
   ```

5. Start the stack:

   ```bash
   docker compose -f searxng/docker-compose.yml up -d
   ```

6. Review the logs:

   ```bash
   docker compose -f searxng/docker-compose.yml logs -f searxng
   ```

7. Confirm the instance is reachable over the local bind or your reverse proxy.

## Configuration notes

The default config under `searxng/config/settings.yml` preserves Search123 branding while keeping the SearXNG defaults and relevant custom UI links.

Key items to verify:

- `SEARXNG_SECRET` is not empty and is not committed to source control
- `SEARXNG_BASE_URL` matches the instance domain
- privacy policy, issue tracker, and documentation URLs are correct
- Docker ports are not exposed directly unless you intentionally want that setup
- reverse-proxy headers and TLS termination are configured correctly

## Security checklist

Before exposing the service publicly, verify:

- no real secrets are committed to the repo
- `.env` is ignored by Git
- the search instance is behind a trusted reverse proxy when necessary
- the IP/port exposure matches your deployment model
- rate limits and public-instance settings are reviewed

## AGPL-3.0 and source availability

Search123 and SearXNG are AGPL-3.0 software. If you host a modified Search123 or a combined custom deployment, you must preserve notices and make the corresponding source code available to users as required by the AGPL.

The expected source-availability practices are:

- keep the LICENSE and copyright notices intact
- keep the upstream SearXNG attribution in documentation and UI notices
- publish the modified source for the combined web service if it is a networked application
- point users to the project repository and license files

This repository publishes Search123-specific example configuration and template modifications; it is not verified as the complete corresponding source for the running instance. Identify the exact deployed SearXNG image version/digest and make the applicable corresponding source available to network users. The upstream project source is available at:

- https://github.com/searxng/searxng

## Public export cleanup

Temporary export archives and the `Search123-public/` staging directory are intentionally excluded from the final repository tree. The exported logo-generation script and generated logo were not incorporated because the example deployment uses the upstream favicon and no logo override is configured. The live VPS is not changed by this repository cleanup. Historical Git commits may still contain deleted staging files.

## Not for production use without review

This guide intentionally avoids assuming a live production environment. Before production rollout, review the instance configuration, access controls, TLS setup, and upstream reverse-proxy policy. Do not deploy to the live VPS without a full operator review.
