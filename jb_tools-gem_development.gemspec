
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jb_tools/gem_development/version"

Gem::Specification.new do |spec|
  spec.name          = "jb_tools-gem_development"
  spec.version       = JbTools::GemDevelopment::VERSION
  spec.authors       = ["Josh Bodah"]
  spec.email         = ["jbodah@cargurus.com"]

  spec.summary       = %q{tools I use for development}
  spec.homepage      = "https://github.com/jbdoah/jb_tools-gem_development"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "spy_rb"
  spec.add_dependency "minitest"
  spec.add_dependency "minitest-tagz"
  spec.add_dependency "pry-byebug"
end
