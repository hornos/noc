# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','noc','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'noc'
  s.version = Noc::VERSION
  s.author = 'Tom Hornos'
  s.email = 'tom.hornos@gmail.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
# Add your other files here if you make them
  s.files = %w(
bin/noc
lib/noc/version.rb
lib/noc.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','noc.rdoc']
  s.rdoc_options << '--title' << 'noc' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'noc'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency('erubis')
  s.add_development_dependency('JSON')
  s.add_runtime_dependency('gli','2.0.0')
end
