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
- a secure `SEARXNG_SECRET_KEY` value

## Quick start

1. Copy the sample environment file:

   ```bash
   cp searxng/.env.example searxng/.env
   ```

2. Edit `searxng/.env` and replace the example values with your own secure settings.

3. Update `SEARXNG_BASE_URL` to match your actual public URL.

4. Start the stack:

   ```bash
   docker compose -f searxng/docker-compose.yml up -d
   ```

5. Review the logs:

   ```bash
   docker compose -f searxng/docker-compose.yml logs -f searxng
   ```

6. Confirm the instance is reachable over the local bind or your reverse proxy.

## Configuration notes

The default config under `searxng/config/settings.yml` preserves Search123 branding while keeping the SearXNG defaults and relevant custom UI links.

Key items to verify:

- `SEARXNG_SECRET_KEY` is not empty and is not committed to source control
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

The canonical project source for Search123 is this GitHub repository. The upstream project source is available at:

- https://github.com/searxng/searxng

## Not for production use without review

This guide intentionally avoids assuming a live production environment. Before production rollout, review the instance configuration, access controls, TLS setup, and upstream reverse-proxy policy. Do not deploy to the live VPS without a full operator review.
