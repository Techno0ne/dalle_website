import requests

url = "https://api.openai.com/v1/engines/{text-davinci-003}/completions"

headers = {
    "Authorization": "Bearer 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",
    "Content-Type": "application/json",
}

data = {
    "prompt": "What is the capital of France?",
    "temperature": 0.5
}

response = requests.post(url, headers=headers, json=data)

print(response.text)
