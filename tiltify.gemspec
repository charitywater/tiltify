# frozen_string_literal: true

require_relative "lib/tiltify/version"

Gem::Specification.new do |spec|
  spec.name          = "tiltify"
  spec.version       = Tiltify::VERSION
  spec.authors       = ["Dean Perry"]
  spec.email         = ["dean@deanpcmad.com"]

  spec.summary       = "A Ruby library for the Tiltify v3 API"
  spec.homepage      = "https://github.com/deanpcmad/tiltify"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/deanpcmad/tiltify"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 1.7"
  spec.add_dependency "faraday_middleware", "~> 1.1"
end
