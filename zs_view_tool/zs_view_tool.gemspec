
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "zs_view_tool/version"
require "zs_view_tool/renderer"

Gem::Specification.new do |spec|
  spec.name          = "zs_view_tool"
  spec.version       = ZsViewTool::VERSION
  spec.authors       = ["Zabrina Larson"]
  spec.email         = ["zabrinalarson@gmail.com"]

  spec.summary       = %q{Various new specific methods for applications I use.}
  spec.description   = %q{Provides generated html code for rails applications}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
