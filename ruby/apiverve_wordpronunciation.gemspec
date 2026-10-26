# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_wordpronunciation"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Word Pronunciation API - Ruby Client"
  spec.description   = "Word Pronunciation is a pronunciation API that retrieves the phonetic pronunciation of any English word in ARPAbet format. Pass a word to receive its phonetic transcription for speech synthesis, dictionaries, or language tools."
  spec.homepage      = "https://apiverve.com/marketplace/wordpronunciation?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/wordpronunciation-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/wordpronunciation"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
