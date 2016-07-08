# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chinese_pinyin_rs/version'

Gem::Specification.new do |spec|
  spec.name          = "chinese_pinyin_rs"
  spec.version       = ChinesePinyinRs::VERSION
  spec.authors       = ["lcp"]
  spec.email         = ["lcpmarvel@gmail.com"]

  spec.summary       = %q{Chinese Pinyin written in Rust}
  spec.description   = %q{Chinese Pinyin written in Rust}
  spec.homepage      = "https://github.com/LcpMarvel/chinese_pinyin_rs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "ffi"
end
