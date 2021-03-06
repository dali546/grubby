
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "grubby/version"

Gem::Specification.new do |spec|
  spec.name          = "grubby"
  spec.license       = "GPL-3.0"
  spec.version       = Grubby::VERSION
  spec.authors       = ["dali546"]
  spec.email         = ["35352237+dali546@users.noreply.github.com"]

  spec.summary       = %q{CLI interface to install and manage GRUB bootloader.}
  spec.description   = %q{A thor-based CLI gem to create, modify GRUB bootloader.}
  spec.homepage      = "https://github.com/dali546/grubby"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dali546/grubby"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "tty-box", "~> 0.4.1"
  spec.add_dependency "tty-color", "~> 0.5"
  spec.add_dependency "tty-command", "~> 0.9.0"
  spec.add_dependency "tty-config", "~> 0.3.2"
  spec.add_dependency "tty-cursor", "~> 0.7"
  spec.add_dependency "tty-editor", "~> 0.5"
  spec.add_dependency "tty-file", "~> 0.8.0"
  spec.add_dependency "tty-font", "~> 0.4.0"
  spec.add_dependency "tty-logger", "~> 0.2.0"
  spec.add_dependency "tty-markdown", "~> 0.6.0"
  spec.add_dependency "tty-pager", "~> 0.12"
  spec.add_dependency "tty-pie", "~> 0.3.0"
  spec.add_dependency "tty-platform", "~> 0.2"
  spec.add_dependency "tty-progressbar", "~> 0.17"
  spec.add_dependency "tty-prompt", "~> 0.19"
  spec.add_dependency "tty-screen", "~> 0.7"
  spec.add_dependency "tty-spinner", "~> 0.9"
  spec.add_dependency "tty-table", "~> 0.11.0"
  spec.add_dependency "tty-tree", "~> 0.3"
  spec.add_dependency "tty-which", "~> 0.4"
  spec.add_dependency "pastel", "~> 0.7.2"
  spec.add_dependency "thor", "~> 0.20.0"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
