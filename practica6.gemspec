lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "practica6/version"

Gem::Specification.new do |spec|
  spec.name          = "practica6"
  spec.version       = Practica6::VERSION
  spec.authors       = ["Eduardo Nuez Wehbe"]
  spec.email         = ["alu0101128153@ull.edu.es"]

  spec.summary       = %q{Practica 6}
  spec.description   = %q{Huella nutricional}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1920/tdd-EduardoNuezWehbe"

  spec.metadata["allowed_push_host"] = "https://github.com/ULL-ESIT-LPP-1920/tdd-EduardoNuezWehbe"

  spec.metadata["homepage_uri"] = "https://github.com/ULL-ESIT-LPP-1920/tdd-EduardoNuezWehbe"
  spec.metadata["source_code_uri"] = "https://github.com/ULL-ESIT-LPP-1920/tdd-EduardoNuezWehbe"
  spec.metadata["changelog_uri"] = "https://github.com/ULL-ESIT-LPP-1920/tdd-EduardoNuezWehbe"
 spec.metadata["yard.run"] = "yri"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0.2"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", " ~> 3.9"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "coveralls"

end
