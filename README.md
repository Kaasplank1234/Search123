# Search123

Search123 is a privacy-conscious, SearXNG-inspired metasearch project designed to provide a clean, modern, and user-friendly public search experience. It is intended to serve as a simple but powerful alternative to centralized search engines.

Live project links:

- Search Engine: https://search123.dpdns.org/
- Uptime Monitoring: https://hetrixtools.com/r/78a317a660bd198f2b8f1bb286ce62f5/
- Cheesy Studios website: https://www.cheesy-studios.22web.org/homepagina
- Privacy Policy: https://cheesy-studios.tawk.help/article/hieronder-onze-uitgebreide-privacyverklaring

This repository contains the official project documentation for Search123. The content below is written in English and is meant to provide a complete overview of the project, its architecture, its philosophy, and its deployment context.

## Project Overview

Search123 is a web search instance inspired by the principles of SearXNG, a well-known open-source metasearch engine. SearXNG focuses on privacy, aggregation, and decentralization in the search process.

The project is more than a simple search frontend. It represents an approach to public search that values:

- privacy-conscious operation
- easy public access
- maintainability
- a cleaner interface
- transparency in project documentation
- a flexible architecture for future growth

## Why Search123 Exists

The internet is dominated by a small number of highly centralized search services. While these services are highly functional, they are often associated with aggressive data collection, user profiling, and tracking practices that many users find concerning.

This project is intended to deliver an experience that is:

- easy to use
- understandable to maintainers
- public and accessible
- aligned with privacy-first principles
- inspired by open-source search infrastructure
- suitable for future customization and extension

## Relationship to SearXNG

Search123 is not a clone of SearXNG in the strictest sense, but it follows the same general design directions. SearXNG is known for combining search results from multiple upstream sources into one user-facing interface.

The domains in which Search123 aligns with SearXNG include:

- metasearch-style result aggregation
- reduced dependence on a single search provider
- privacy-oriented operational philosophy
- user-friendly result presentation
- self-hosting and customization potential
- community-driven, open-source influence

This project is therefore best described as SearXNG-inspired rather than as a proprietary or closed search ecosystem.

## Mission Statement

The mission of Search123 is to provide a public, accessible, and privacy-aware web search experience that is simple to understand, easy to operate, and suitable for future development. The project should remain straightforward enough to maintain while delivering genuine utility to end users.

## Goals and Objectives

Search123 is built around the following goals:

1. Provide a publicly usable search experience.
2. Encourage a privacy-aware search philosophy.
3. Keep the interface clean and accessible.
4. Support the broader public web in a simple, understandable format.
5. Maintain reliable operation and monitor uptime.
6. Create clear documentation for deployment and maintenance.
7. Offer a strong base for future enhancements.
8. Support the associated Cheesy Studios brand and online presence responsibly.

## Core Features

Search123 includes the following key characteristics:

### 1. Public web search access

The search instance is publicly available at:

- https://search123.dpdns.org/

This allows users to access the project directly in a browser without local setup.

### 2. Privacy-oriented approach

The project follows a privacy-focused direction consistent with the broader SearXNG philosophy. Search123 is intended to be a practical, respectful, and transparent search platform. Detailed privacy responsibilities are documented in the official privacy policy.

For the official policy, see:

- https://cheesy-studios.tawk.help/article/hieronder-onze-uitgebreide-privacyverklaring

### 3. Uptime monitoring

Search123 is connected to an uptime monitoring service to keep track of availability and identify issues quickly:

- https://hetrixtools.com/r/78a317a660bd198f2b8f1bb286ce62f5/

This gives maintainers an operational view of the service and helps detect downtime or faults quickly.

### 4. Clean and minimal interface

The project emphasizes accessibility and a simple user experience. Instead of cluttering the page with heavy distractions or excessive UI layers, it aims to stay focused on the core task: searching the web efficiently.

### 5. Metasearch architecture

The platform is designed around the concept of aggregating results from multiple sources rather than locking users into a single provider. This is one of the principal benefits of the SearXNG philosophy and approach.

### 6. Maintainability

The project is designed to be documented, understandable, and extendable. Clear operational guidance is critical for long-term reliability, especially in public-facing services.

## Project Links

The following links are central to the public presence of Search123:

- Search123: https://search123.dpdns.org/
- Uptime Monitoring: https://hetrixtools.com/r/78a317a660bd198f2b8f1bb286ce62f5/
- Cheesy Studios website: https://www.cheesy-studios.22web.org/homepagina
- Privacy Policy: https://cheesy-studios.tawk.help/article/hieronder-onze-uitgebreide-privacyverklaring

## Use Cases

Search123 can be used in a variety of practical scenarios, including:

- a public alternative search endpoint
- a privacy-aware search deployment
- a metasearch-based demonstration project
- a research or learning platform for open search architecture
- a frontend foundation for future custom search infrastructure
- a service for users seeking a less centralized search experience

## Intended Audience

This project is relevant to:

- developers interested in privacy-aware search systems
- open-source contributors working on search infrastructure
- maintainers who want a simple and manageable public service
- users seeking alternative search experiences
- organizations exploring metasearch as a scalable alternative
- technical teams documenting search architecture and deployment

## Privacy and Data Handling

Search123 is designed with respect for privacy-oriented web practices, but all formal privacy requirements, rights, and relevant handling policies are governed by the official privacy policy provided by Cheesy Studios.

The authoritative privacy policy is here:

- https://cheesy-studios.tawk.help/article/hieronder-onze-uitgebreide-privacyverklaring

This means that privacy-related questions, legal wording, data handling practices, and policy responsibilities should be reviewed in that document rather than repeated in a redundant or conflicting form in this repository.

## Operational Model

Search123 is intended to work as a reliable online utility. This means it must remain:

- online and reachable
- easy to use
- understandable for operators
- responsive to outages or slowdowns
- secure enough for public deployment
- manageable through clear documentation

Typical operational tasks for this project include:

- domain and hosting management
- server health checks
- HTTPS and certificate maintenance
- search backend configuration and updates
- uptime monitoring review
- server log analysis
- privacy and policy alignment reviews
- maintenance of public-facing documentation

## System Architecture

Although this repository is not an exhaustive infrastructure specification, it is useful to understand the general design pattern behind the project.

### 1. User-facing web layer

This is the public interface where users enter keywords and receive results. It should be clean, responsive, and easy to navigate.

### 2. Search query processing layer

This layer handles user requests and prepares them for upstream search operations. It may also include filtering, normalization, or formatting logic.

### 3. Metasearch aggregation layer

This layer queries one or more external search providers and collects the results into a single output stream. This is the part of the system that distinguishes a metasearch implementation from a proprietary search engine.

### 4. Result ranking and presentation layer

The aggregated results need to be displayed in a usable order. This may involve filtering, re-ranking, formatting, or presentation logic to make the result list easier to consume.

### 5. Reverse proxy and hosting layer

A public-facing service typically runs behind a reverse proxy or web server that manages HTTP/HTTPS, request routing, caching, and security checks.

### 6. Monitoring and operations layer

Monitoring services such as Hetrix Tools ensure there is visibility into service health and that outages are quickly detected.

### 7. Policy and compliance layer

This layer ensures the project remains aligned with official privacy policy documentation and any other relevant legal or operational obligations.

## Typical Deployment Stack

A Search123 deployment may involve one or more of the following components:

- SearXNG or a SearXNG-inspired backend
- a reverse proxy like Nginx or Caddy
- TLS certificate management
- a public domain or subdomain
- monitoring services such as Hetrix Tools
- a VPS or cloud hosting environment
- logging and troubleshooting tools
- optional rate limiting or abuse protections
- backup and recovery workflows

## Security Considerations

Public web services must be treated as internet-facing systems. Even a relatively small search project can be exposed to traffic spikes, automated attacks, abusive requests, and security vulnerabilities that demand attention.

For this reason, a production deployment should include:

- regular package upgrades
- secure TLS configuration
- limited administrative exposure
- network hardening
- monitoring and alerting
- testing for unusual traffic patterns
- backup and rollback procedures
- careful review of externally visible data handling

## Performance Considerations

Search systems sometimes need to balance performance against breadth of results. A metasearch engine may need to wait on multiple upstream queries, which can add latency. Search123 should therefore aim for a reasonable balance between responsiveness and result quality.

Performance improvements could include:

- better result caching strategies
- improved ranking and filtering
- optimized server-side request handling
- reduced unnecessary UI overhead
- result layout improvements for mobile and desktop users

## Reliability and Uptime

Availability is essential for a public service. Search123 includes uptime monitoring to ensure that the service remains healthy and accessible.

Official uptime link:

- https://hetrixtools.com/r/78a317a660bd198f2b8f1bb286ce62f5/

This platform provides a practical way to verify service continuity and react quickly when there is a disruption.

## Documentation Philosophy

This repository is intended to be a strong documentation foundation. It does not only describe the frontend; it explains the reasoning behind the project, the broader context of the search ecosystem, and how the pieces fit together.

The documentation aims to answer questions such as:

- What is Search123?
- What problem does it solve?
- Why is it inspired by SearXNG?
- How is it structured?
- What are the main operational concerns?
- Where are the official public links?
- Where is the privacy policy located?
- How can the service be extended in the future?

## Development Principles

The Search123 project is guided by the following principles:

- simplicity over unnecessary complexity
- clarity over obscurity
- openness over closed systems
- maintainability over fragile custom solutions
- privacy awareness over intrusive design
- extensibility over rigid implementation

## Potential Future Enhancements

Search123 has room for future development in several areas, including:

- improved result ranking and relevance filtering
- additional interface customization
- better mobile responsiveness
- multilingual search support
- better accessibility for screen readers and keyboard navigation
- improved integration with custom deployment environments
- enhanced monitoring and alerting workflows
- broader documentation for operators and contributors
- stronger separation between frontend and backend responsibilities

## Relationship to Cheesy Studios

Search123 sits within the broader ecosystem of Cheesy Studios and may be used as part of the public-facing digital presence of that brand. The associated site is:

- https://www.cheesy-studios.22web.org/homepagina

This website is a public reference point for the broader organization, while the privacy policy remains the official document governing data-related matters:

- https://cheesy-studios.tawk.help/article/hieronder-onze-uitgebreide-privacyverklaring

## Legal and Policy Alignment

The project should always align with the official public policy and legal notices that are published by the owning organization. If a question concerns privacy, cookies, consent, or data processing, it should refer to the official privacy policy rather than invent or restate policy language in this repository.

This repository intentionally avoids duplicating or rewriting policy language that belongs in the official privacy policy document.

## Public Communication Standards

Any public-facing message or documentation related to Search123 should remain:

- honest
- clear
- accurate
- relevant
- respectful of user expectations
- consistent with the official privacy policy

This helps maintain trust, reduces confusion, and supports a stable user experience.

## Success Criteria

Search123 can be considered successful when:

- the service is reliably online
- users can search without confusion
- the project remains easy to maintain
- uptime remains strong
- the project stays aligned with privacy-conscious principles
- documentation remains current and useful
- it remains extensible and adaptable for future work

## Risks and Limitations

A public metasearch project inevitably comes with trade-offs, including:

- varied result quality depending on upstream providers
- possible latency caused by running multiple queries
- dependence on external upstream search sources
- infrastructure and hosting responsibilities
- the need for ongoing maintenance and monitoring
- privacy posture constraints depending on operational setup

These limitations are common in metasearch and should be considered part of the project design rather than a weakness of the concept itself.

## Maintenance Responsibilities

Search123 should be maintained with a clear operational mindset. That includes:

- verifying the public site is online
- reviewing uptime alerts and service health
- checking for broken or stale configurations
- updating dependent services when necessary
- keeping documentation aligned with live deployment changes
- reviewing privacy references and ensuring they remain current
- testing core functionality on a regular basis

## Final Summary

Search123 is a privacy-conscious, SearXNG-inspired search project built to provide a clear, user-friendly, and public-facing search experience. It aims to deliver practical value while promoting privacy-aware design and open-source principles.

Key public links:

- Search Engine: https://search123.dpdns.org/
- Uptime Monitoring: https://hetrixtools.com/r/78a317a660bd198f2b8f1bb286ce62f5/
- Cheesy Studios: https://www.cheesy-studios.22web.org/homepagina
- Privacy Policy: https://cheesy-studios.tawk.help/article/hieronder-onze-uitgebreide-privacyverklaring

This repository provides the broader project documentation and should act as a technical and operational companion to the live instance and official policy references. In all matters involving data handling or privacy concerns, refer to the official privacy policy.

---

## Quick Reference

If you are looking for the essentials:

- Name: Search123
- Model: SearXNG-inspired metasearch
- Public URL: https://search123.dpdns.org/
- Uptime status: https://hetrixtools.com/r/78a317a660bd198f2b8f1bb286ce62f5/
- Website: https://www.cheesy-studios.22web.org/homepagina
- Privacy Policy: https://cheesy-studios.tawk.help/article/hieronder-onze-uitgebreide-privacyverklaring

Search123 is a public-facing search project with a focus on usable retrieval, privacy awareness, and maintainable operational design.

## Contribution Notes

This project welcomes improvements in areas such as:

- UI refinement
- documentation improvements
- accessibility enhancements
- better deployment guidance
- operator notes and maintenance documentation
- performance tuning and search relevance work
- monitoring and reliability improvements

## Closing Statement

Search123 represents a practical and forward-looking search project built around open-source inspiration, modern usability, and responsible digital practices. It is intended to remain clear, maintainable, and useful for both operators and users.

For all privacy-related matters, the official privacy policy is the authoritative source. That policy remains the definitive source for privacy questions, and all technical documentation in this repository should support that official guidance rather than replace it.
