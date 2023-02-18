curl https://api.openai.com/v1/images/generations \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer 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' \
  -d '{
  "prompt": "Draven from League of Legends riding a bear",
  "size": "1024x1024"
}'