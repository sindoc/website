### API Usage
	- #### Endpoint
		- Hugging Face Inference API for Meta’s LLaMA models.
	- #### Authentication
		- [[API key]] for [[Hugging Face]]
		- `Authorization: Bearer <API_KEY>`
	- #### Call Example
		- ```python
		  import requests
		  
		  def query_llama(prompt):
		      url = "https://api-inference.huggingface.co/models/meta-llama/LLaMA-7b"
		      headers = {"Authorization": f"Bearer {LLAMA_API_KEY}"}
		      json_data = {"inputs": prompt}
		      response = requests.post(url, json=json_data, headers=headers)
		      return response.json()[0]["generated_text"]
		  ```