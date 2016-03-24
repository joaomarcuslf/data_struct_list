# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'data_struct_list/version'

Gem::Specification.new do |spec|
  spec.name          = "data_struct_list"
  spec.version       = DataStructList::VERSION
  spec.authors       = ["João Marcus de Lemos Fernandes"]
  spec.email         = ["jmarcusfernandes@gmail.com"]

  spec.summary       = %q{This is an lib for using Data Structure Architecture.}
  spec.description   = %q{The normal study of Data Structure use some language like C, Python or Java, but this gem adds normal Data Structure like Linked List, to Ruby Language..}
  spec.homepage      = "https://github.com/joaomarcuslf/data_struct_list"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end

