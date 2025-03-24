### APIs
	- #### Endpoint
		- Use Vertex AI (formerly AI Platform) for text generation.
	- #### Authentication
		- Google Application Default Credentials (ADC) or OAuth 2.0 tokens.
	- #### Python SDK
		- Available via the `google-cloud-aiplatform` library.
	- #### Call Example
		- ```python
		  from google.cloud import aiplatform
		  
		  def query_google(prompt):
		      client = aiplatform.PredictionServiceClient()
		      endpoint = "projects/YOUR_PROJECT_ID/locations/YOUR_LOCATION/endpoints/YOUR_ENDPOINT_ID"
		      instance = {"content": prompt}
		      response = client.predict(endpoint=endpoint, instances=[instance])
		      return response.predictions[0]
		    
		  ```
	- ##