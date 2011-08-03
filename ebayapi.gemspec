# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
PKG_VERSION = "0.12.0"
PKG_NAME = "ebayapi"
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"


Gem::Specification.new do |s|
  s.name = PKG_NAME
  s.version = PKG_VERSION
  s.summary = "Ruby client for the eBay unified schema XML API"
  s.has_rdoc = true
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md ROADMAP.md CHANGELOG.md)
  s.require_path = 'lib'
  s.author = "Cody Fauser"
  s.email = "codyfauser@gmail.com"
  s.homepage = "http://ebayapi.rubyforge.org"
  s.add_dependency('xml-mapping', '>= 0.8.1')
  s.add_dependency('money', '= 1.7.1')
end
