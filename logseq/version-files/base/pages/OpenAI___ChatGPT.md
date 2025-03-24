### Current Version = GPT4
	- Endpoint: https://api.openai.com/v1/completions
	- Authentication: Requires an API key (Authorization: Bearer <API_KEY>).
	- Python SDK: Available via the openai package.
	- Example Call
		- ```python
		  import openai
		  openai.api_key = "your_openai_api_key"
		  
		  def query_openai(prompt):
		      response = openai.Completion.create(
		          engine="gpt-4", prompt=prompt, max_tokens=100
		      )
		      return response.choices[0].text.strip()
		  ```