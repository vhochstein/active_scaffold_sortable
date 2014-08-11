# -*- encoding: utf-8 -*-

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'active_scaffold_sortable/version'
Gem::Specification.new do |s|
  s.name = %q{active_scaffold_sortable_vho}
  s.version = ActiveScaffoldSortable::Version::STRING

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Volker Hochstein"]
  s.date = %q{2011-02-01}
  s.description = %q{Sort Tree or List Structures by Drag n Drop}
  s.email = %q{activescaffold@googlegroups.com}

  s.files = Dir["{app,frontends,lib}/**/*"] + %w[README.textile LICENSE.txt]
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.test_files = [
  ]
  s.homepage = %q{http://github.com/vhochstein/active_scaffold_sortable}
  s.summary = %q{Drag n Drop Sorting for Activescaffold}

  s.add_development_dependency(%q<shoulda>, [">= 0"])
  s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
  s.add_development_dependency(%q<rcov>, [">= 0"])
  s.add_runtime_dependency(%q<active_scaffold_vho>, [">= 3.1.2"])
end

