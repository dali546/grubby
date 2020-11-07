require_relative 'lib/grubby/version'

Gem::Specification.new do |spec|
  spec.name          = "grubby"
  spec.version       = Grubby::VERSION
  spec.authors       = ["dali546"]
  spec.email         = ["35352237+dali546@users.noreply.github.com"]

  spec.summary       = %q{CLI interface to install and manage GRUB bootloader.}
  spec.description   = %q{A thor-based CLI gem to create, modify GRUB bootloader.}
  spec.homepage      = "https://github.com/dali546/grubby"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dali546/grubby"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 1.0.0"
end
