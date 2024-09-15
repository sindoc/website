alias:: Google Cloud Functions

- Google Cloud Functions offers [[serverless functions]] compute that can be used for [[bias detection tests]] .
- ## Deployment
	- Use the **gcloud CLI** or **Google Console** for deployment.
	- ### Code Example
	- ```python
	  import os
	  import openai
	  import requests
	  from google.cloud import aiplatform as google_ai
	  
	  # Google Cloud Function HTTP trigger
	  def hello_world(request):
	      request_json = request.get_json(silent=True)
	      prompt = request_json.get("prompt", "")
	      platform = request_json.get("platform", "openai")
	  
	      if not prompt:
	          return {"statusCode": 400, "body": "Missing 'prompt' parameter"}
	  
	      try:
	          result = query_model(prompt, platform)
	          return {"statusCode": 200, "body": result}
	      except Exception as e:
	          return {"statusCode": 500, "body": str(e)}
	  ```
	- ### Command Line
	- ```bash
	  gcloud functions deploy hello_world --runtime python39 --trigger-http --allow-unauthenticated
	  ```