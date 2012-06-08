# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "debugger-pry"
  s.version     = "0.1.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrew O'Brien", "John Mair"]
  s.email       = ["obrien.andrew@gmail.com", "jrmair@gmail.com"]
  s.homepage    = "http://github.com/pry/debugger-pry"
  s.summary     = "Adds a 'pry' command to debugger"
  s.description = "This gem adds a 'pry' command to invoke Pry in the current context."
  s.files       = `git ls-files`.split("\n")

  s.add_dependency("pry", ">= 0.9.9")
  s.add_dependency("debugger", "~> 1")
end
