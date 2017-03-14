# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meowth/version'

Gem::Specification.new do |spec|
  spec.name          = "meowth"
  spec.version       = Meowth::VERSION
  spec.authors       = ["Jack Pan"]
  spec.email         = ["i@jackpan.me"]

  spec.summary       = %q{Ruby port of Union Pay SDK.}
  spec.description   = %q{Ruby port of Union Pay SDK. Because Union Pay only offers Java, PHP and .NET SDK. I write Ruby port based on Java SDK.}
  spec.homepage      = "https://github.com/junzhepan/meowth"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rest-client"
end
