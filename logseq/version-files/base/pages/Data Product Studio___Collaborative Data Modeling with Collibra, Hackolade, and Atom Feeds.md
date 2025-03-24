-
- #### [[Data Product Exchange/Collaborative Data Modeling with Collibra, Hackolade, and Atom Feeds]]
	- **Description**: Proposes a new way of working that integrates Collibra, Hackolade, YAML-based modeling, and Atom 1.0 feeds to synchronize logical and physical data model changes for data products.
	- AI Use Case: Automate metadata synchronization, model validation, and lineage generation across systems.
	- Data Use Case: Provide a clear separation between logical and physical models, while enabling federated reuse and syndicated discovery.
	- **Way of Working**:
	  collapsed:: true
		- Logical models are authored as `YAML` and version-controlled.
		- Hackolade is used to:
			- Maintain conceptual → logical mappings.
			- Export logical models to YAML.
		- YAML logical models are linked to Collibra `Concept Models` and `Business Terms`.
		- Physical models (DDL, schema, table-level metadata) are refreshed via **Collibra Edge**.
		- Atom 1.0 feeds announce:
			- Data model version changes.
			- Infoset availability.
			- Breaking vs. non-breaking changes.
		- **Contractual Metadata Exchange**:
			- Each dataset has an associated `contract.yaml`.
			- Contracts include:
				- Consumer requirements
				- Schema expectations
				- SLAs
				- Privacy notes
	- **Data Models**:
	  collapsed:: true
		- [[Data Models/Employee Verzuim Record]]
			- **Logical Model (YAML)**
			  ```yaml
			  name: employee_verzuim_logical
			  version: 1.0.0
			  entities:
			    - Employee:
			        attributes:
			          - employee_id: string
			          - birth_date: date
			          - department: string
			    - VerzuimCase:
			        attributes:
			          - case_id: string
			          - start_date: date
			          - end_date: date
			          - cause_code: string
			          - status: string
			  reference_data:
			    - cause_code: ["01", "02", "03"]
			  ```
			- **Physical Model (DDL from Collibra Edge)**
			  ```sql
			  CREATE TABLE verzuim_cases (
			    case_id VARCHAR(64),
			    employee_id VARCHAR(64),
			    start_date DATE,
			    end_date DATE,
			    cause_code VARCHAR(10),
			    status VARCHAR(20)
			  );
			  ```
		- [[Data Models/World Verzuim Benchmark]]
			- **Logical Model (YAML)**
			  ```yaml
			  name: world_verzuim_benchmark
			  version: 0.9.0
			  entities:
			    - RegionSummary:
			        attributes:
			          - region: string
			          - year: integer
			          - avg_leave_days: float
			          - std_dev_days: float
			    - DemographicSegment:
			        attributes:
			          - segment_id: string
			          - age_range: string
			          - gender: string
			          - avg_leave_days: float
			  ```
			- **Physical Model (DDL from Snowflake, registered in Collibra)**
			  ```sql
			  CREATE TABLE region_summary (
			    region STRING,
			    year INTEGER,
			    avg_leave_days FLOAT,
			    std_dev_days FLOAT
			  );
			  
			  CREATE TABLE demographic_segment (
			    segment_id STRING,
			    age_range STRING,
			    gender STRING,
			    avg_leave_days FLOAT
			  );
			  ```
	- **Contract Example**:
		- `contract.yaml`
		  ```yaml
		  dataset: world_verzuim_benchmark
		  version: 0.9.0
		  expected_delivery: quarterly
		  consumer_requirements:
		    - geographic granularity: region
		    - demographic dimensions: age_range, gender
		  data_quality:
		    freshness: 7 days
		    completeness: 99%
		    validity: ISO date formats
		  compliance:
		    privacy_level: pseudonymized
		    data_protection: GDPR-aligned
		  ```
	- **Atom Feed Example**:
		- `atom.xml`
		  ```xml
		  <feed xmlns="http://www.w3.org/2005/Atom">
		    <title>PGGM World Verzuim Model Feed</title>
		    <updated>2025-03-24T12:00:00Z</updated>
		    <author><name>Data Governance Team</name></author>
		    <id>tag:pggm.nl,2025:data-models/world-verzuim</id>
		    <entry>
		      <title>world_verzuim_benchmark v0.9.0</title>
		      <link href="https://cdn.pggm.nl/data/world_verzuim_benchmark.yaml" />
		      <updated>2025-03-24T11:59:00Z</updated>
		      <summary>Initial release of benchmark model with regional and demographic segmentation.</summary>
		    </entry>
		  </feed>
		  ```
	- **Benefits**:
		- Clear traceability from YAML → Collibra → Physical DBs
		- Separation of responsibilities for logical vs. physical modeling
		- Feed-driven communication of model changes and releases
		- Enables contract-based governance and automated checks
	- **Next Steps**:
		- Work out a concrete example with Arjan...
		-