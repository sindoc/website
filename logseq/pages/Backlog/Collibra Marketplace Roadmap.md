# Roadmap: Collibra Marketplace-Aligned Buildout

Date: 2026-03-26
Basis: current Collibra Marketplace themes and recent Singine/Collibra/Edge work

## Phase 1. Stabilize the Collibra I/O Core
Goal:
- make `singine collibra io` the default governed interaction surface

Deliverables:
- `chip` status, tool discovery, and configuration flows
- REST fallback where MCP is insufficient
- datasource diagnosis and connection probing
- community, hierarchy, and reference-data create/fetch flows

Success criteria:
- one operator can test a Collibra connection and explain failure modes from the CLI
- basic create/fetch actions work without using the UI for every step

## Phase 2. Standardize Source-System Introspection
Goal:
- make schema discovery predictable before Edge configuration

Deliverables:
- PostgreSQL bridge from SQLite
- database, schema, table, and column listing commands
- driver download and caching
- secure connection material generation for Edge UI or API-backed setup

Success criteria:
- a local or network database can be introspected end to end
- the CLI produces the exact values needed for Edge datasource setup

## Phase 3. Edge Capability and Ingestion Operations
Goal:
- turn Edge from a setup artifact into an operable governed runtime

Deliverables:
- datasource diagnose
- capability inventory and test-status inspection
- ingestion-ready manifests
- repeatable staging and sync flows where needed

Success criteria:
- operators can distinguish secret creation, capability creation, and job dispatch
- failure modes such as `noCapabilityInstancesFound` are diagnosable from the CLI

## Phase 4. Lineage Productization
Goal:
- align with Marketplace emphasis on lineage and connector value

Deliverables:
- custom lineage batch generation
- relationship-upsert export path
- technology-lineage export for `lutino.io`
- dual-domain lineage views for electricity and pension fund manager

Success criteria:
- lineage can be generated from Singine-managed metadata
- outputs can be rendered and published, not just stored

## Phase 5. Reference Data and Semantic Layer
Goal:
- align with glossary, semantic-model, and business-term accelerators

Deliverables:
- code table model
- crosswalk table model
- reference-data export/import commands
- hierarchy query and rendering commands
- publication assets for SKOS, Atom, RSS, and XML

Success criteria:
- Collibra hierarchy and reference-data structures can be queried and published consistently
- four-letter code alignment is explicit and reusable

## Phase 6. Publication and Marketplace-Grade Packaging
Goal:
- make the work legible as a reusable integration and publication surface

Deliverables:
- SilkPage transforms
- Apache Forrest bridge targets
- public graph pages on the website repo
- man pages and DocBook coverage
- Logseq kernel and private operational notes where appropriate

Success criteria:
- new topics publish cleanly to the public graph
- technical and governance documentation stay aligned

## Phase 7. Temporal Algebra and Time-Series Operations
Goal:
- derive operational intelligence from metadata and processing events

Deliverables:
- temporal model pages
- activity-log time series extraction
- freshness and cadence metrics
- lineage-over-time views

Success criteria:
- metadata and lineage activity can be reasoned about as time-aware systems
- dashboards and reports can be generated from operational traces

## Now / Next / Later

### Now
- finish `singine collibra io` stabilization
- keep `chip` as the preferred default backend
- document command families in man pages and DocBook
- publish backlog and architecture pages in the public graph

### Next
- implement hierarchy and reference-data exports
- generate lineage payloads and rendered views
- formalize SilkPage plus Forrest publication targets

### Later
- package domain accelerators
- add Ballerina, Spring Boot, Zapier-style bridge surfaces where justified
- design the virtual driver layer for SQL, SPARQL, GraphQL, REST, OpenAPI, xAPI, and gRPC

## Notes
- This roadmap is an inference from current Marketplace offerings, not a statement from Collibra about its future product roadmap.
- The trend signal is strongest around MCP/agentic access, workflows, lineage, connectors, semantic export, and governed ingestion.

## Sources
- https://marketplace.collibra.com/
- https://marketplace.collibra.com/listings/data-product-workflows/
- https://marketplace.collibra.com/listings/collibra-data-lineage/
- https://marketplace.collibra.com/listings/azure-data-factory-lineage/
- https://marketplace.collibra.com/listings/microstrategy-metadata-lineage/
