# Word Pronunciation API - PHP Package

Word Pronunciation is a pronunciation API that retrieves the phonetic pronunciation of any English word in ARPAbet format. Pass a word to receive its phonetic transcription for speech synthesis, dictionaries, or language tools.

## Installation

Install via Composer:

```bash
composer require apiverve/wordpronunciation
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Wordpronunciation\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['word' => 'hello']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Wordpronunciation\Client;
use APIVerve\Wordpronunciation\Exceptions\APIException;
use APIVerve\Wordpronunciation\Exceptions\ValidationException;

try {
    $response = $client->execute(['word' => 'hello']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "word": "hello",
    "pronounciation": "HH AH0 L OW1"
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/wordpronunciation?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/wordpronunciation?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/wordpronunciation?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
