# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'html_assets/version'

Gem::Specification.new do |s|
  s.name        = 'html_assets'
  s.version     = HtmlAssets::VERSION
  s.authors     = ['Daniel Gaiottino']
  s.email       = ['daniel.gaiottino@gmail.com']
  s.homepage    = ''
  s.summary     = 'Compile HTML templates in the Rails asset pipeline.'
  s.description = 'Compile HTML templates in the Rails asset pipeline.'

  s.rubyforge_project = 'html_assets'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'tilt'
  s.add_runtime_dependency 'sprockets', '~> 3.0'
end
