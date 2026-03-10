stage:: Discovery

- ### Example
  background-color:: purple
	- ## 🗓️ Week Arithmetic (Groovy)
	- ### Week Class
	- ISO-8601 week (YYYY-Www)
	- Week arithmetic: `plusWeeks`, `minusWeeks`
	- Comparison supported
	- Supports parsing (`Week.parse('2025-W01')`)
	- Supports `Week.from(LocalDate.now())`
	- `getStartDate()` returns Monday of the week
	- ### Example
	  ```groovy
	  def week = Week.parse("2025-W26")
	  println week.plusWeeks(1) // → 2025-W27
	  println week.getStartDate() // → 2025-06-23
	  ```
- ## Initial Requirements
  background-color:: green
	- ## 📅 Week:: 2025-W26
	  tags:: #weekly-review #value-accounting #lutino.io #liabilities #assets #cognitive-capacity
	- ### 🎯 Objective
	  Map all tasks and commitments for the week against their cost, risk, and profit, and determine their impact on:
	- 🧾 Liabilities (what we owe, commit to, are responsible for)
	- 💰 Assets (what builds future value, stability, reputation)
	- ### 🧾 Value Vector Definition
	  Each task is evaluated on a 1–5 scale:
	- `Cost`: 1 (minimal time/energy) → 5 (high drain)
	- `Risk`: 1 (safe) → 5 (risky/ambiguous liability)
	- `Profit`: 1 (indirect/long-term) → 5 (immediate financial/cognitive gain)
	- ### 📊 Task Matrix
	  
	  | Task ID | Task Description                         | Cost | Risk | Profit | Value Vector | Liability Impact | Asset Impact | Notes |
	  |--------:|------------------------------------------|-----:|-----:|-------:|---------------|------------------|---------------|-------|
	  | T001    | Prepare financial report for accountant  | 3    | 2    | 4      | [3,2,4]       | ✅               | ✅            | Supports fiscal transparency |
	  | T002    | Record ambient audio + beat samples      | 2    | 1    | 3      | [2,1,3]       | ❌               | ✅            | Future creative IP |
	  | T003    | Reply to outstanding client emails       | 2    | 2    | 3      | [2,2,3]       | ✅               | ❌            | Maintains client confidence |
	  | T004    | Work on Collibra asset export automation | 4    | 3    | 5      | [4,3,5]       | ✅               | ✅            | Technically demanding but reusable |
	  | T005    | Block 3 hours for deep focus             | 1    | 1    | 4      | [1,1,4]       | ❌               | ✅            | Self-investment |
	  | T006    | Meet grandparents for outdoor planning   | 2    | 1    | 3      | [2,1,3]       | ❌               | ✅            | Intergenerational education |
	  | T007    | Join new partnership sales call          | 3    | 4    | 5      | [3,4,5]       | ✅ (reputation)  | ✅            | Risk of overselling capacity |
	- ### 🧮 Weekly Balance Summary
	- #### 🧾 Liability Impact
		- ✅ Tasks increasing liability: **4** (`T001`, `T003`, `T004`, `T007`)
		- Consider reducing task load or offloading via automation or delegation.
	- #### 💰 Asset Impact
		- ✅ Tasks increasing assets: **6** (`T001`, `T002`, `T004`, `T005`, `T006`, `T007`)
		- Valuable for long-term equity building.
	- #### 🧠 Mental Load Allocation (subjective estimate)
		- Max capacity: 40 units (8h * 5 days)
		- Estimated usage from task cost:
	-