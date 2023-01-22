Add-Type -AssemblyName mscorlib
$cache = [System.Collections.Generic.Dictionary[string,string]]::new()
$prompt = "this is a test"
$headers = @{
    "Content-Type" = "application/json";
    "Authorization" = "Bearer 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";
    "Organization-Id" = "org-lkPiW5czoulmK1hf8B3ILXP3"
}
$body = @{
    prompt = $prompt;
    temperature = 0.7
}

if ($cache.ContainsKey($prompt)) {
    # Retrieve response from cache
    $response = $cache[$prompt]
} else {
    # Make request to OpenAI API
    $response = Invoke-WebRequest -Method POST -Uri "https://api.openai.com/v1/engines/davinci/completions" -Body ($body | ConvertTo-Json) -Headers $headers
    $response = $response.Content
    # Add response to cache
    $cache.Add($prompt, $response)
}

# Print the response
$response
