# Search123

Search123 is a privacy-conscious metasearch project powered by SearXNG. It is designed to provide a clean, public-facing search experience while keeping configuration transparent, configurable, and easy to maintain.

Live project links:

- 🔍 Search Engine: https://search123.dpdns.org/
- 📊 Website: https://kaasplank1234.github.io/Search123/
- ⏱️ Uptime Monitoring: https://hetrixtools.com/r/78a317a660bd198f2b8f1bb286ce62f5/
- 🏠 Cheesy Studios: https://www.cheesy-studios.22web.org/homepagina
- 🔐 Privacy Policy: https://cheesy-studios.tawk.help/article/hieronder-onze-uitgebreide-privacyverklaring
- 🧩 GitHub Repository: https://github.com/Kaasplank1234/Search123

This repository contains the project documentation, branding references, and the SearXNG integration files used by Search123.

## Project overview

Search123 is a lightweight, privacy-aware public search instance inspired by SearXNG. The project is intended to stay simple to operate, transparent in its configuration, and aligned with open-source standards.

The project emphasizes:

- privacy-conscious operation
- maintainable public deployment
- clean and readable branding
- a straightforward Docker-based SearXNG setup
- documentation for contributors and operators

## Repository structure

The current SearXNG config and runtime integration files are kept in the `searxng/` directory:

- `searxng/config/settings.yml` — Search123-specific SearXNG settings
- `searxng/templates/simple/base.html` — branded HTML template override
- `searxng/docker-compose.yml` — safe local example deployment
- `searxng/.env.example` — environment variable template
- `docs/DEPLOYMENT.md` — deployment and operational guidance

## SearXNG and AGPL-3.0

Search123 is built on top of SearXNG and follows the AGPL-3.0 licensing model used by the upstream project. Any modified instance or derived deployment that includes SearXNG code or a substantially similar combined work must retain the relevant copyright and license notices and make the corresponding source code available to users, as required by the AGPL.

For upstream source and the original project:

- SearXNG: https://github.com/searxng/searxng
- SearXNG License: https://github.com/searxng/searxng/blob/master/LICENSE
- Search123 License: [LICENSE](LICENSE)

## Deployment guidance

The repo includes a safe, example-only deployment setup under `searxng/` and should be reviewed before any live use. The included Docker Compose file intentionally uses placeholder domains and a required secret value, and it is not a production backup.

For the full deployment checklist, see [docs/DEPLOYMENT.md](docs/DEPLOYMENT.md).

## Security and configuration notes

Before using the example configuration in a real environment:

- create a real `.env` file from `searxng/.env.example`
- replace `SEARXNG_SECRET_KEY` with a strong random value
- review all domain URLs and reverse-proxy settings
- ensure the external URL and privacy policy links are correct for the instance
- do not expose Docker ports publicly without an upstream proxy or access control layer

The public export directories were reviewed for obvious secrets and placeholders. The example files are safe starting points but still require operator review before deployment.

## License

Search123 is released under the GNU Affero General Public License v3.0 (AGPL-3.0). See [LICENSE](LICENSE) for the full text.

## Credits

Search123 builds on the work of the open-source community, especially SearXNG and the associated maintainers. See [CREDITS.md](CREDITS.md) for a complete attribution list.

## Contributing

Contributions are welcome. Please use issues and pull requests to propose changes, documentation improvements, or deployment fixes.

## Security disclosure

If you discover a security issue, do not create a public issue with sensitive details. Use the project contact or private disclosure channel described in the repository security policy.

---

Search123 is intended to remain a transparent, privacy-aware, and maintainable public search project built around SearXNG and the AGPL-3.0 licensing model.
