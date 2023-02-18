curl -X POST \
  https://api.openai.com/v1/engines/{text-davinci-003}/completions \
  -H 'Authorization: Bearer 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' \
  -H 'Content-Type: application/json' \
  -d '{
  "prompt": "What is the capital of France?",
  "temperature": 0.5
}'