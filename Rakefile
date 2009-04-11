require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'hoe'
require File.join(File.dirname(__FILE__), "lib", "harsh")


class Hoe 
   # Dirty hack to eliminate Hoe from gem dependencies
   def extra_deps 
      @extra_deps.delete_if{ |x| x.first == 'hoe' }
   end
end

Hoe.new('harsh', Harsh::Version * ".") do |p|
  p.author = "Michael J Edgar"
  p.email = "adgar@carboni.ca"
  p.summary = "Harsh: Another Rails Syntax Highlighter"
  p.extra_deps << ['bjeanes-ultraviolet', '>= 0.10.0']
  p.extra_deps << ['textpow', '>= 0.10.0']
end


desc 'Default: run unit tests.'
task :default => :test

desc 'Test the harsh plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the harsh plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Harsh'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
