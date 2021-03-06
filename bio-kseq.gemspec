# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bio/kseq/version'

Gem::Specification.new do |spec|
  spec.name          = "bio-kseq"
  spec.version       = Bio::Kseq::VERSION
  spec.authors       = ["Fedor Gusev"]
  spec.email         = ["gusevfe@gmail.com"]
  spec.summary       = %q{Ruby inferface for kseq.h by Heng Li for fast FASTA/Q reading}
  spec.description   = %q{A fast FASTA/FASTQ parser based on kseq.h by Heng Li}
  spec.homepage      = "https://github.com/gusevfe/bio-kseq"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0") - ["timing.rb"]
  spec.files         << "ext/seqtk_bindings/seqtk/kseq.h"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "ext"]
  spec.extensions    = Dir['ext/**/extconf.rb']
  spec.platform = Gem::Platform::RUBY

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "rake-compiler"
  #spec.add_development_dependency "bio" # For timing script
  #spec.add_development_dependency "bio-faster" # For timing script
end
