# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'face_counter/version'

Gem::Specification.new do |spec|
  spec.name          = "face_counter"
  spec.version       = FaceCounter::VERSION
  spec.authors       = ["henteko"]
  spec.email         = ["henteko07@gmail.com"]

  spec.summary       = %q{select image face count}
  spec.description   = %q{select image face count}
  spec.homepage      = "https://github.com/henteko/face_counter"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
