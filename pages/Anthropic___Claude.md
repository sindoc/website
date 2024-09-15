### Use APIs
	- #### Endpoint
		- `https://api.anthropic.com/v1/complete`
	- #### Authentication
		- API key (`Authorization: Bearer <API_KEY>`).
	- #### Call Example
		- ```python
		  import requests
		  
		  def query_anthropic(prompt):
		      url = "https://api.anthropic.com/v1/complete"
		      headers = {"Authorization": f"Bearer {ANTHROPIC_API_KEY}", "Content-Type": "application/json"}
		      json_data = {"prompt": prompt, "max_tokens_to_sample": 100}
		      response = requests.post(url, json=json_data, headers=headers)
		      return response.json()["completion"]
		    
		  ```