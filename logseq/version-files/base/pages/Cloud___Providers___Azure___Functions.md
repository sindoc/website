alias:: Azure Functions

- Azure Functions is [[Microsoft's]] serverless compute service. Use it to deploy [[bias detection tests]] using [[Python]].
- ### Deployment
	- Use **Azure Functions Core Tools** or **Azure Portal** for deployment.
	- ### Code Example
		- ```python
		  
		  import os
		  import openai
		  import requests
		  from google.cloud import aiplatform as google_ai
		  
		  # Azure Function HTTP trigger
		  def main(req):
		    prompt = req.params.get('prompt')
		    platform = req.params.get('platform', 'openai')
		  
		    if not prompt:
		        return {"status": 400, "body": "Missing 'prompt' parameter"}
		  
		    try:
		        result = query_model(prompt, platform)
		        return {"status": 200, "body": result}
		    except Exception as e:
		        return {"status": 500, "body": str(e)}
		  
		  ```
	- ### Command Line
		- ```bash
		  func azure functionapp publish YOUR_FUNCTION_APP_NAME
		  ```