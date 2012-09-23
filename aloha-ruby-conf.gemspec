# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Benjamin Smith"]
  gem.email         = ["benjamin.lee.smith@gmail.com"]
  gem.description   = %q{The Aloha Ruby Conf Gem!}
  gem.summary       = %q{ Get an ascii version of the schedule as well as a basic English to Hawaiian translator.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "aloha-ruby-conf"
  gem.require_paths = ["lib"]
  gem.version       = "2012.2"

  gem.add_runtime_dependency "terminal-table"
end
