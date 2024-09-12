- [[Gender bias]] detection in for [[AI models]] or [[AI Systems]] using [[blackbox acceptance testing]]
- ## Gender Bias Detection Tests
  background-color:: purple
	- [[AI Governance/Test/Gender Role Stereotyping]]
	- [[AI Governance/Test/Gender Swap Test]]
	- [[AI Governance/Test/Pronoun Bias Test]]
	- [[AI Governance/Test/Sentiment Analysis by Gender]]
	- [[AI Governance/Test/Gender Representation in Occupations]]
	- [[AI Governance/Test/Gender-Specific Language and Descriptors]]
	- [[AI Governance/Test/Non-Binary and Gender-Inclusive Language Test]]
	- [[AI Governance/Test/Ambiguous Gender Role Test]]
	- ## Useful Information for running these tests as a serverless function
		- ### Running These Tests on [[AWS Lambda]]
		  id:: 66e33e8f-1375-42e4-b12c-b750b348799e
		  background-color:: green
			- Each of the test functions is invoked through the lambda_handler which will route the request based on the test type provided in the event.
			- ```python
			  def lambda_handler(event, context):
			      # Entry point for AWS Lambda
			      test_type = event.get("test_type")
			      prompt = event.get("prompt")
			      return run_test(test_type, prompt)
			  ```
		- #### Lambda Environment Setup
		  background-color:: yellow
		  collapsed:: true
			- 1.	Ensure API keys for services like OpenAI or Hugging Face are set as environment variables.
			  	2.	Adjust the timeout and memory settings for Lambda based on the complexity of the responses you’re processing.
			  	3.	Package dependencies (e.g., openai, textblob) either by using Lambda Layers or bundling them within the Lambda deployment package.
			- ```python
			  import os
			  import json
			  import openai  # Assuming the use of OpenAI's GPT API
			  import re
			  from textblob import TextBlob
			  
			  # OpenAI API Key from environment variable
			  openai.api_key = os.getenv("OPENAI_API_KEY")
			  
			  def lambda_handler(event, context):
			      # Entry point for AWS Lambda
			      test_type = event.get("test_type")
			      prompt = event.get("prompt")
			      return run_test(test_type, prompt)
			  
			  def run_test(test_type, prompt):
			      if test_type == "gender_role_stereotyping":
			          return detect_gender_role_stereotyping(prompt)
			      elif test_type == "gender_swap":
			          return detect_gender_swap_bias(prompt)
			      elif test_type == "pronoun_bias":
			          return detect_pronoun_bias(prompt)
			      elif test_type == "sentiment_analysis":
			          return sentiment_analysis(prompt)
			      elif test_type == "occupation_bias":
			          return detect_occupation_bias(prompt)
			      elif test_type == "gender_descriptors":
			          return detect_gender_specific_descriptors(prompt)
			      elif test_type == "non_binary_bias":
			          return detect_non_binary_bias(prompt)
			      elif test_type == "ambiguous_gender_bias":
			          return detect_ambiguous_gender_bias(prompt)
			      else:
			          return {"error": "Invalid test type"}
			  
			  # Helper function to query OpenAI model
			  def query_openai(prompt):
			      response = openai.Completion.create(
			          engine="text-davinci-003",
			          prompt=prompt,
			          max_tokens=50
			      )
			      return response.choices[0].text.strip()
			  ```
		- ### Useful Python Libraries for Extending These Tests
		  id:: 66e33dfb-69e0-4562-be4c-9bdbcbdeeb59
		  background-color:: green
			- [[Transformers]] from [[Hugging Face]]
				- For model-based comparisons between different prompt outputs.
			- [[NLTK]]
				- For text processing and detecting sentiment or variations in word usage between genders.
				- **Useful for**: Tokenization, finding gender-related terms in text, and pattern recognition.
			- [[OpenAI]] or an alternative model of course.
				- For querying [[the AI model]].
			- [[Difflib]]
				- For comparing outputs and identifying discrepancies between the original and swapped prompts.
				- **Useful for**: Highlighting specific differences between two text outputs after the gender swap.
			- [[SpaCy]]
				- For detecting pronouns and other parts of speech in the AI output.
				- **Useful for**: Identifying the use of gendered pronouns in generated text.
			- [[TextBlob]]
				- For simplifying text analysis tasks, including identifying gender pronouns.
			- [[VADER Sentiment Analysis]] (from [[NLTK]]):
				- A more nuanced library for sentiment analysis.
				- **Useful for**: Performing sentiment analysis tailored for social media and short-form text.
- ## Sensitive Terms
	- Creating a [[list of sensitive terms]] related to [[gender bias]] is essential for identifying how [[AI models]] may
	  collapsed:: true
		- [[reinforce stereotypes]], or
		- [[exhibit biased behaviour]]
		- These keywords, phrases, or concepts are often linked to any of the following:
			- [[traditional gender roles]]
			- [[societal expectations]]
			- [[cultural associations]]
		- Testing an AI model against these terms can help evaluate whether the system perpetuates gender bias.
	- ### [[Gender-specific Names]]
	- ### [[Gender-Stereotypical Phrases]]
	- ### [[Gendered Occupational Roles]]
	- ### [[Personality Traits & Emotional Descriptors]]
	- ### [[Stereotypically Gender Roles]]
	- ### [[Gendered Adjectives]]
	- ### [[Gender-specific Pronouns]]
	- ### [[Gendered Social Roles]]
	- ### [[Gender-Related Concepts and Activities]]
	- ### [[Stereotypes Around Gender Identity]]
	- ### [[Cultural Markers and Gender Norms]]
	- These [[terms]] and [[phrases]] can be used in specific [[test cases]] or [[prompts]] designed to explore how the [[AI system]] responds to or [[reinforces gender bias]]. Here’s how:
- ## Common Bias Indicators to Look For
	- [[stereotypical traits]]
		- Describing men as strong, logical, or assertive and women as emotional, nurturing, or passive.
	- [[pronoun bias]]
		- Defaulting to male pronouns in neutral or gender-ambiguous prompts.
	- [[emotional language]]
		- Assigning more emotional language to women and more rational language to men.
	- [[role bias]]
		- Assigning men to leadership or technical roles and women to caregiving or support roles.
	- [[sentiment disparity]]
		- Generating more positive sentiment for male figures and more neutral or negative sentiment for female figures in similar contexts.