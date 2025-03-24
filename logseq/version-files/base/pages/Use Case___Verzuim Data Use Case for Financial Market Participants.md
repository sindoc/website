title:: Use Case/Verzuim Data Use Case for Financial Market Participants
tags:: #verzuim #datamodel #infoset #pggm #financialparticipants #usecase #logseq
alias:: Verzuim Test

- ## 🧩 Objective
  
  To establish a **reusable Verzuim Data Model** across multiple business units and use cases, enabling:
- Unified data definitions and governance
- Efficient model extension and versioning
- Accurate and aligned benchmarking for financial participants
  
  ---
- ## 🧠 Proposal: Way of Working for Shared Verzuim Data Model
  
  We propose a **collaborative model governance approach** to ensure Verzuim-related use cases can be supported by a common data model:
  
  ---
- ### ✅ Step-by-Step Process
  
  1. **Define Core Verzuim Concepts**
	- Collaborate across LDMO-CC, LDMO-PA, LDMO-IM
	- Identify shared data entities: `Employee`, `LeavePeriod`, `AbsenceCause`, `Status`, `Intervention`
	  
	  2. **Separate Core from Extension**
	- Tag shared attributes as `core`
	- Define extensions by LoB or domain (e.g., HR-specific status codes)
	  
	  3. **Develop Reference & Master Data Standards**
	- Align on codes (sick leave cause, interventions, status)
	- Maintain mappings in a shared reference model
	  
	  4. **Create Use Case-Specific Infosets**
	- Design `infosets` as tailored slices of the core data model
	- Examples:
		- `infoset::pa-portfolio-verzuim`
		- `infoset::cc-employee-verzuim`
		- `infoset::im-esg-verzuim-index`
		  
		  5. **Model in Collibra**
	- Use Concept Models, Business Terms, and Binary Fact Types
	- Align metadata across Business Units
	  
	  6. **Publish & Syndicate**
	- YAML for orchestrating use case metadata
	- XML (RSS) for publishing datasets
	- SKOS (Turtle) for concept definitions
	  
	  7. **Version & Certify**
	- Apply quarterly governance checkpoints
	- Use data quality rules & lineage tracking
	  
	  ---
- ## 🧪 Demonstrating Reuse (Across Business Units)
- ### 🎯 Corporate Control (CC)
  
  | Use Case | Data Need | Model Reuse |
  |----------|-----------|-------------|
  | Quarterly Verzuim | Aggregated metrics | 70% |
  | Productivity Models | Intervention periods | 60% |
  | ESG Internal Reports | Status & demographics | 65% |
  
  ---
- ### 🎯 Pension Administration (PA)
  
  | Use Case | Data Need | Model Reuse |
  |----------|-----------|-------------|
  | Daily Verzuimbeheer | Operational leave data | 85% |
  | Provider Benchmarking | Cause codes, status | 75% |
  | Trend Analysis | Normalized history | 80% |
  
  ---
- ### 🎯 Investment Management (IM)
  
  | Use Case | Data Need | Model Reuse |
  |----------|-----------|-------------|
  | ESG Portfolio Score | Regional comparisons | 65% |
  | Risk Indexing | Demographics, duration | 70% |
  | Benchmark Positioning | Master data + trend overlay | 60% |
  
  ---
- ## 🌍 Toward World Verzuim
  
  **World Verzuim** is a PGGM-sponsored infoset built from the shared model:
- Combines **multi-region**, **multi-timescale**, and **multi-demographic** data
- Publishes **contextual, persona-based slices**
- Links to PGGM’s reference data cloud and certified metadata
  
  **Goal**: Enable benchmarking of Verzuim trends and behavior across organizations and time.
  
  ---
- ## 🔄 Outputs & Tools
  
  | Format | Purpose |
  |--------|---------|
  | `verzuim-model-reuse.yaml` | Orchestration |
  | `world-verzuim-feed.xml` | Syndication (RSS) |
  | `verzuim-skos.ttl` | Concept alignment (SKOS) |
  | `infoset::` pages | Persona/context-specific views |
  
  ---
- ## ✅ Next Steps
- [ ] Finalize core Verzuim model in Collibra
- [ ] Develop YAML orchestration templates per use case
- [ ] Align reference data across LoBs
- [ ] Launch World Verzuim Beta Dataset (Q3 2025)
  
  ---
  
  For questions, collaboration, or contribution, reach out to `@lutino.io`.