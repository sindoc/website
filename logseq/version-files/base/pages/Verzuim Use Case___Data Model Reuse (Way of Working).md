title:: Way of Working/Verzuim Data Model reuse
tags:: #verzuim #datamodel #reusability #governance #collibra #infoset #wayofworking

- ---
  
  **## 🎯 Goal**
  
  To define a structured **Way of Working (WoW)** for enabling **Verzuim Data Model reuse** across different PGGM business units (CC, PA, IM), ensuring consistency, quality, and scalability of data products.
  
  ---
  
  **## 🛠 Core Principles**
- **Modularity**: Separate core vs. domain-specific extensions
- **Alignment**: Use shared reference/master data across LoBs
- **Governance**: Embed in Collibra with traceable concepts and metrics
- **Certifiability**: Ensure quarterly checkpoints and audit readiness
- **Infoset-first**: Every use case results in a persona- and perspective-ready dataset
  
  ---
  
  **## 📐 Structural Design**
  
  **### 1. Define Core Schema**
- Fields: `EmployeeID`, `LeaveStartDate`, `LeaveEndDate`, `CauseCode`, `InterventionType`, `Status`
- Governance: Each field is linked to a `Business Term` in Collibra
- Constraints: Standardized types, coded lists, privacy rules
  
  **### 2. Define Extensions**
- CC: Productivity metrics, budget forecasts
- PA: SLA-related fields, provider performance
- IM: ESG weighting, sector/regional filters
  
  ---
  
  **## 🔁 Reuse Mechanism**
  
  | Component         | Reuse Strategy                     |
  
  |------------------|------------------------------------|
  
  | Core Fields       | Reused as-is across LoBs           |
  
  | Reference Tables  | Mapped via SKOS & centralized hub |
  
  | Data Quality Rules| Defined once, reused with config   |
  
  | Lineage Maps      | Common flow + local enrichment     |
  
  | Glossary Terms    | Central concept → LoB synonyms     |
  
  ---
  
  **## 🔃 Collaboration Flow**
  
  1. **Initiation**
	- Each LDMO defines/verifies their own use cases
	- Tag existing models for overlap potential
	  
	  2. **Mapping**
	- Use `Binary Fact Types` in Collibra to find shared semantics
	- Highlight 1:1 and 1:N mappings between LoB models
	  
	  3. **Review**
	- Governance Council performs gap & impact analysis
	- Align quality metrics and shared ownership
	  
	  4. **Publish**
	- Updated model published to CDN and Collibra
	- Exposed as base schema + LoB-specific overlays
	  
	  5. **Track**
	- Monitor reuse % per LoB via quarterly checkpoints
	- Visualize coverage across infosets and glossary terms
	  
	  ---
	  
	  **## 📦 Targeted Outputs**
- ✅ `verzuim-core-schema.yaml`
- ✅ `verzuim-extension-cc.yaml`, `...-pa.yaml`, `...-im.yaml`
- ✅ `infoset::world-verzuim`, `infoset::cc-verzuim-quarterly`, etc.
- ✅ `collibra-model-diff-report.xlsx`
- ✅ `SKOS.ttl` for concept alignment
  
  ---
  
  **## 🧪 Example Reuse Table**
  
  | Field            | CC | PA | IM | Reusable? |
  
  |------------------|----|----|----|-----------|
  
  | EmployeeID       | ✅ | ✅ | ✅ | ✅ 100%    |
  
  | CauseCode        | ✅ | ✅ | ✅ | ✅ 100%    |
  
  | ProviderID       | ❌ | ✅ | ❌ | ❌         |
  
  | ESGWeight        | ❌ | ❌ | ✅ | ❌         |
  
  | LeaveStartDate   | ✅ | ✅ | ✅ | ✅ 100%    |
  
  | InterventionType | ✅ | ✅ | ❌ | ✅ ~66%    |
  
  ---
  
  **## 🧭 Governance Tools**
- 🔗 **Collibra**: Metadata and governance automation
- 🧾 **YAML**: Data contracts and orchestration templates
- 📡 **RSS/XML**: Syndication of dataset updates
- 🌐 **SKOS (Turtle)**: Concept taxonomy and semantic links
  
  ---
  
  **## ✅ Success Criteria**
- [ ] Shared schema used across at least 3 infosets
- [ ] Reference data tables standardized
- [ ] DQ rules executed per LoB with ≥85% compliance
- [ ] World Verzuim published with reuse traceability
  
  ---
  
  For collaboration, reach out via `@lutino.io`.