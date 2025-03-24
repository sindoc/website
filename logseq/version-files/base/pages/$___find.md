- The find command does wonders
- Example: First, give me the command for moving the most recent files (the few Screenshots created in the last five minutes) from your Desktop on Mac OS X.
	- I want to move them to the [[~/ws/2024/campaigns/AutomatedDataMesh/RAWdata/]]
	- ```bash
	  find ~/Desktop -name "Screenshot*.png" -mmin -5 -exec mv {} ~/ws/2024/campaigns/AutomatedDataMesh/ \;
	  ```