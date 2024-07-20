# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "rishisharma"
  spec.version       = "7.0.1"
  spec.authors       = ["Cotes Chung"]
  spec.email         = ["cotes.chung@gmail.com"]

  spec.summary       = "A minimal, responsive, and feature-rich Jekyll theme for technical writing."
  spec.homepage      = "https://github.com/Rishisharma-connect/rishisharma-connect.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f|
    f.match(%r!^((_(includes|layouts|sass|app|(data\/(locales|origin)))|assets)\/|README|LICENSE)!i)
  }

  spec.metadata = {
    "bug_tracker_uri"   => "https://github.com/Rishisharma-connect/rishisharma-connect.github.io/issues",
    "documentation_uri" => "https://github.com/Rishisharma-connect/rishisharma-connect.github.io/#readme",
    "homepage_uri"      => "https://www.rishisharma.in",
    "source_code_uri"   => "https://github.com/Rishisharma-connect/rishisharma-connect.github.io",
    "wiki_uri"          => "https://github.com/Rishisharma-connect/rishisharma-connect.github.io/wiki",
    "plugin_type"       => "theme"
  }

  spec.required_ruby_version = ">= 3.0"

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-archives", "~> 2.2"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-include-cache", "~> 0.2"

end
