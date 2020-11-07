Gem::Specification.new do |spec|
  spec.name        = 'grubby'
  spec.version     = '0.0.1'
  spec.date        = '2020-11-07'
  spec.summary     = "CLI interface to install and manage GRUB bootloader."
  spec.description = "A thor-based CLI gem to create, modify GRUB bootloader"
  spec.authors     = ["Muhammed Ali"]
  spec.files       = ["lib/grubby.rb"]
  spec.executables << "grubby"

  spec.add_dependency "thor", "~> 1.0.0"
end
