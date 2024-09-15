### API Use
	- #### Endpoint
		- The Azure-specific deployment URL for OpenAI
			- (depends on the resource and deployment)
	- ### Authentication
		- [[Azure]] [[API key]] or [[Azure AD OAuth 2.0]] token.
	- #### Call Example
		- ```python
		  import requests
		  
		  def query_azure_openai(prompt):
		      url = "https://YOUR_RESOURCE_NAME.openai.azure.com/openai/deployments/YOUR_DEPLOYMENT_ID/completions?api-version=2022-12-01"
		      headers = {"api-key": AZURE_OPENAI_API_KEY, "Content-Type": "application/json"}
		      json_data = {"prompt": prompt, "max_tokens": 100}
		      response = requests.post(url, json=json_data, headers=headers)
		      return response.json()["choices"][0]["text"]
		  ```