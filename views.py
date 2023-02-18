from pyramid.response import Response
import requests

def api_request(request):
    prompt = "What is the capital of France?"
    temperature = 0.5
    headers = {
        "Authorization": "Bearer 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",
        "Content-Type": "application/json",
    }
    data = {
        "prompt": prompt,
        "temperature": temperature
    }
    response = requests.post(
        "https://api.openai.com/v1/engines/{text-davinci-003}/completions",
        headers=headers,
        json=data,
    )
    return Response(response.text)
