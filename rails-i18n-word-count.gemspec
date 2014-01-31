# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rails-i18n-word-count"
  spec.version       = "0.0.1"
  spec.authors       = ["Marcin Lewandowski"]
  spec.email         = ["marcin@saepia.net"]
  spec.description   = %q{Simple Rails I18n gem that helps in counting amount of words in locales for estimating translation cost}
  spec.summary       = %q{Rails I18n gem that counts amount of words in locales}
  spec.homepage      = "https://github.com/saepia/rails-i18n-word-count"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'i18n'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
