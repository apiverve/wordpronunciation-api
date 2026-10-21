# Word Pronunciation API - Ruby Gem

Word Pronunciation is a pronunciation API that retrieves the phonetic pronunciation of any English word in ARPAbet format. Pass a word to receive its phonetic transcription for speech synthesis, dictionaries, or language tools.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_wordpronunciation'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_wordpronunciation
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_wordpronunciation'

# Initialize the client
client = APIVerve::Wordpronunciation::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ word: "hello" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ word: "hello" })
  puts response["data"]
rescue APIVerve::Wordpronunciation::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Wordpronunciation::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Wordpronunciation::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/wordpronunciation?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/wordpronunciation?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/wordpronunciation?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
