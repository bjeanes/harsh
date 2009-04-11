(in /Users/bjeanes/Projects/harsh)
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{harsh}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael J Edgar"]
  s.date = %q{2009-04-11}
  s.description = %q{"Harsh: Another Rails Syntax Highlighter," is just that - it highlights code in Rails, much like Radiograph or tm_syntax_highlighting. However, it does it well, _better_. Oh, and it also supports Haml, as well as ERb. And it comes with rake tasks.  Firstly, it allows block form: <% harsh :theme => :dawn do %> class Testing def initialize(str) puts str end end <% end %> as well as the form the other plugins offer, which is text as a parameter: <% harsh %Q{ class Testing def initialize(str) puts str end end }, :theme => :dawn  For haml, harsh is implemented as a filter. First, add this to the bottom of your environment.rb: Harsh.enable_haml  Then, to use harsh in Haml: :harsh class Foo < Bar end  However, haml's filters can't take options. So how on earth are we going to customize it to our heart's delight? Easily, my friend, fret not! Enter the BCL (Bootleg Configuration Line):  :harsh #!harsh theme = all_hallows_eve lines=true syntax=css h1 { float:left; clear:left; position:relative; }  It has to be the first line in the filter. You don't need the config line, though. Also, notice that you can have spaces between the arguments and the little = sign.  Harsh also offers rake tasks for what tm_syntax_highlighting provides in generators, and a :harsh as a stylesheet-includer to load all syntax-highlighting files, as such: <%= stylesheet_include_tag :harsh %>  The rake tasks for setting up your stylesheets are these: rake harsh:theme:list # lists available themes rake harsh:theme:install[twilight] # installs the twilight theme into /public/stylesheets/harsh/ rake harsh:theme:install THEME=twilight # also installs the twilight theme (for *csh shells) rake harsh:theme:uninstall[twilight] # removes the twilight theme rake harsh:theme:uninstall THEME=twilight # also uninstalls the twilight theme (for *csh shells)  While purely informative, you can find out the available syntaxes as follows: rake harsh:syntax:list}
  s.email = %q{adgar@carboni.ca}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/harsh.rb", "tasks/harsh_tasks.rake", "test/harsh_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.carboni.ca/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{harsh}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Harsh: Another Rails Syntax Highlighter}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bjeanes-ultraviolet>, [">= 0.10.0"])
      s.add_runtime_dependency(%q<textpow>, [">= 0.10.0"])
      s.add_development_dependency(%q<hoe>, [">= 1.12.1"])
    else
      s.add_dependency(%q<bjeanes-ultraviolet>, [">= 0.10.0"])
      s.add_dependency(%q<textpow>, [">= 0.10.0"])
      s.add_dependency(%q<hoe>, [">= 1.12.1"])
    end
  else
    s.add_dependency(%q<bjeanes-ultraviolet>, [">= 0.10.0"])
    s.add_dependency(%q<textpow>, [">= 0.10.0"])
    s.add_dependency(%q<hoe>, [">= 1.12.1"])
  end
end
