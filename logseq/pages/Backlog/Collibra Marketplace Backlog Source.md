# Collibra Marketplace Backlog Source

Date: 2026-03-26
Source Scope: official Collibra Marketplace pages

## Purpose
This file is the source backlog for planning Singine, Collibra, SilkPage, and Edge work based on current signals from the Collibra Marketplace.

## Observed Marketplace Signals

### 1. Agentic and MCP-style metadata interaction
Evidence:
- Collibra MCP Server (Local Version)
- Conversational Metadata Management, MCP Server for Collibra

Backlog implications:
- Treat `singine collibra io` as the primary governed I/O shell.
- Make `chip` the default backend where possible.
- Add structured request/response and activity tracing for MCP-mediated operations.

### 2. Workflow accelerators around data products
Evidence:
- Data Product Workflows
- Collibra Data Product to OSI Semantic Model
- Collibra Data Product to Snowflake Semantic View

Backlog implications:
- Model data-product publication as a first-class workflow family.
- Generate YAML or semantic payloads from governed Collibra assets.
- Add Singine commands that produce workflow-ready export bundles.

### 3. Strong demand for lineage and technical connectors
Evidence:
- Collibra Data Lineage
- Azure Data Factory Lineage
- MicroStrategy metadata & lineage
- Alteryx OpenLineage Integration
- Power BI, Vertex AI, Databricks AI Models, SAP-related offerings

Backlog implications:
- Prioritize lineage generation, validation, and publication.
- Add exports for custom lineage payloads and relationship-upsert payloads.
- Build connector abstractions around Edge-compatible capability patterns.

### 4. Industrial-scale metadata ingestion
Evidence:
- RDI-DATA Industrial Strength Metadata Importer to Collibra
- partner accelerators focused on large-scale metadata import

Backlog implications:
- Build repeatable ingestion pipelines rather than one-off imports.
- Add batch, retry, and diagnostics surfaces under `singine collibra io`.
- Standardize staging, schema introspection, and governed import manifests.

### 5. Business glossary and governed semantic enrichment
Evidence:
- Business Glossary Content via Agentic Solution and OOTB Definitions
- semantic-model generation offerings

Backlog implications:
- Treat reference data, code tables, crosswalk tables, and hierarchies as core assets.
- Formalize business-term and reference-data publication through SilkPage and Collibra.
- Expose hierarchy retrieval and export commands in a stable CLI.

### 6. Ecosystem pattern: domain-specific accelerators
Evidence:
- BIAN accelerator
- industry and platform-specific integrations

Backlog implications:
- Design domain packs rather than only generic commands.
- Start with electricity and pension-fund-manager domain views.
- Keep Collibra metamodel alignment explicit through four-letter codes and reference-data schemes.

## Priority Themes
1. Collibra I/O shell
2. MCP and chip integration
3. Edge diagnostics and capability-aware workflows
4. PostgreSQL and schema-introspection path for governed ingestion
5. Lineage generation and publication
6. Reference data, code tables, hierarchy, and crosswalk support
7. Semantic and document publication through SilkPage and Apache Forrest
8. Temporal algebra and time-series analysis for operational governance

## Candidate Singine Command Families

```bash
singine collibra io chip status
singine collibra io chip tools list
singine collibra io hierarchy get --code XXXX --depth 2
singine collibra io edge datasource diagnose --id <UUID>
singine collibra io lineage technologies export --community "lutino.io" --domain "Systems"
singine collibra edge create datasource connection --download-driver
singine pg create database fromSQLite /tmp/singine/sqlite.db --db-name singine_bridge --replace
singine pg list databases
singine pg list schemas --db-name singine_bridge
singine pg list tables --db-name singine_bridge --schema public
singine pg list columns --db-name singine_bridge --schema public --table entities
singine silkpage forrest validate
singine silkpage forrest site
singine silkpage lineage generate --domain electricity
singine silkpage lineage generate --domain pension-fund-manager
singine silkpage page render --page dual-domain-lineage
singine silkpage serve
```

## Sources
- https://marketplace.collibra.com/
- https://marketplace.collibra.com/listings/data-product-workflows/
- https://marketplace.collibra.com/listings/collibra-data-lineage/
- https://marketplace.collibra.com/listings/azure-data-factory-lineage/
- https://marketplace.collibra.com/listings/microstrategy-metadata-lineage/

