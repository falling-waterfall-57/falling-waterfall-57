# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{roxml}
  s.version = "3.1.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ben Woosley", "Zak Mandhro", "Anders Engstrom", "Russ Olsen"]
  s.date = %q{2009-12-17}
  s.description = %q{ROXML is a Ruby library designed to make it easier for Ruby developers to work with XML.
Using simple annotations, it enables Ruby classes to be mapped to XML. ROXML takes care
of the marshalling and unmarshalling of mapped attributes so that developers can focus on
building first-class Ruby classes. As a result, ROXML simplifies the development of
RESTful applications, Web Services, and XML-RPC.
}
  s.email = %q{ben.woosley@gmail.com}
  s.extra_rdoc_files = ["History.txt", "README.rdoc"]
  s.files = [".gitignore", ".gitmodules", "History.txt", "LICENSE", "README.rdoc", "Rakefile", "TODO", "VERSION", "examples/amazon.rb", "examples/current_weather.rb", "examples/dashed_elements.rb", "examples/library.rb", "examples/posts.rb", "examples/rails.rb", "examples/twitter.rb", "examples/xml/active_record.xml", "examples/xml/amazon.xml", "examples/xml/current_weather.xml", "examples/xml/dashed_elements.xml", "examples/xml/posts.xml", "examples/xml/twitter.xml", "lib/roxml.rb", "lib/roxml/definition.rb", "lib/roxml/hash_definition.rb", "lib/roxml/xml.rb", "lib/roxml/xml/parsers/libxml.rb", "lib/roxml/xml/parsers/nokogiri.rb", "lib/roxml/xml/references.rb", "roxml.gemspec", "spec/definition_spec.rb", "spec/examples/active_record_spec.rb", "spec/examples/amazon_spec.rb", "spec/examples/current_weather_spec.rb", "spec/examples/dashed_elements_spec.rb", "spec/examples/library_spec.rb", "spec/examples/post_spec.rb", "spec/examples/twitter_spec.rb", "spec/roxml_spec.rb", "spec/shared_specs.rb", "spec/spec.opts", "spec/spec_helper.rb", "spec/support/libxml.rb", "spec/support/nokogiri.rb", "spec/xml/attributes_spec.rb", "spec/xml/encoding_spec.rb", "spec/xml/namespace_spec.rb", "spec/xml/namespaces_spec.rb", "spec/xml/object_spec.rb", "spec/xml/parser_spec.rb", "spec/xml/text_spec.rb", "test/fixtures/book_malformed.xml", "test/fixtures/book_pair.xml", "test/fixtures/book_text_with_attribute.xml", "test/fixtures/book_valid.xml", "test/fixtures/book_with_authors.xml", "test/fixtures/book_with_contributions.xml", "test/fixtures/book_with_contributors.xml", "test/fixtures/book_with_contributors_attrs.xml", "test/fixtures/book_with_default_namespace.xml", "test/fixtures/book_with_depth.xml", "test/fixtures/book_with_octal_pages.xml", "test/fixtures/book_with_publisher.xml", "test/fixtures/book_with_wrapped_attr.xml", "test/fixtures/dictionary_of_attr_name_clashes.xml", "test/fixtures/dictionary_of_attrs.xml", "test/fixtures/dictionary_of_guarded_names.xml", "test/fixtures/dictionary_of_mixeds.xml", "test/fixtures/dictionary_of_name_clashes.xml", "test/fixtures/dictionary_of_names.xml", "test/fixtures/dictionary_of_texts.xml", "test/fixtures/library.xml", "test/fixtures/library_uppercase.xml", "test/fixtures/muffins.xml", "test/fixtures/nameless_ageless_youth.xml", "test/fixtures/node_with_attr_name_conflicts.xml", "test/fixtures/node_with_name_conflicts.xml", "test/fixtures/numerology.xml", "test/fixtures/person.xml", "test/fixtures/person_with_guarded_mothers.xml", "test/fixtures/person_with_mothers.xml", "test/load_test.rb", "test/mocks/dictionaries.rb", "test/mocks/mocks.rb", "test/support/fixtures.rb", "test/test_helper.rb", "test/unit/definition_test.rb", "test/unit/deprecations_test.rb", "test/unit/to_xml_test.rb", "test/unit/xml_attribute_test.rb", "test/unit/xml_block_test.rb", "test/unit/xml_bool_test.rb", "test/unit/xml_convention_test.rb", "test/unit/xml_hash_test.rb", "test/unit/xml_initialize_test.rb", "test/unit/xml_name_test.rb", "test/unit/xml_namespace_test.rb", "test/unit/xml_object_test.rb", "test/unit/xml_required_test.rb", "test/unit/xml_text_test.rb", "website/index.html"]
  s.homepage = %q{http://roxml.rubyforge.org}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{roxml}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby Object to XML mapping library}
  s.test_files = ["spec/definition_spec.rb", "spec/examples/active_record_spec.rb", "spec/examples/amazon_spec.rb", "spec/examples/current_weather_spec.rb", "spec/examples/dashed_elements_spec.rb", "spec/examples/library_spec.rb", "spec/examples/post_spec.rb", "spec/examples/twitter_spec.rb", "spec/roxml_spec.rb", "spec/shared_specs.rb", "spec/spec_helper.rb", "spec/support/libxml.rb", "spec/support/nokogiri.rb", "spec/xml/attributes_spec.rb", "spec/xml/encoding_spec.rb", "spec/xml/namespace_spec.rb", "spec/xml/namespaces_spec.rb", "spec/xml/object_spec.rb", "spec/xml/parser_spec.rb", "spec/xml/text_spec.rb", "test/load_test.rb", "test/mocks/dictionaries.rb", "test/mocks/mocks.rb", "test/support/fixtures.rb", "test/test_helper.rb", "test/unit/definition_test.rb", "test/unit/deprecations_test.rb", "test/unit/to_xml_test.rb", "test/unit/xml_attribute_test.rb", "test/unit/xml_block_test.rb", "test/unit/xml_bool_test.rb", "test/unit/xml_convention_test.rb", "test/unit/xml_hash_test.rb", "test/unit/xml_initialize_test.rb", "test/unit/xml_name_test.rb", "test/unit/xml_namespace_test.rb", "test/unit/xml_object_test.rb", "test/unit/xml_required_test.rb", "test/unit/xml_text_test.rb", "examples/amazon.rb", "examples/current_weather.rb", "examples/dashed_elements.rb", "examples/library.rb", "examples/posts.rb", "examples/rails.rb", "examples/twitter.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.3.3"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 1.2.4"])
      s.add_development_dependency(%q<activerecord>, [">= 2.2.2"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.3.0"])
      s.add_dependency(%q<nokogiri>, [">= 1.3.3"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 1.2.4"])
      s.add_dependency(%q<activerecord>, [">= 2.2.2"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.3.0"])
    s.add_dependency(%q<nokogiri>, [">= 1.3.3"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 1.2.4"])
    s.add_dependency(%q<activerecord>, [">= 2.2.2"])
  end
end