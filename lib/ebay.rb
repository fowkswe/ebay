$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

begin
  require 'active_support'
rescue LoadError
  require 'rubygems'
  require 'active_support'
end

begin
  require 'xml/mapping'
rescue LoadError
  require 'rubygems'
  require 'xml-mapping'
end

begin
  require 'money'
rescue LoadError
  require 'rubygems'
  require 'money'
end

# Include the extra string and hash extensions particular to ebay
require 'support/core_ext/string'
require 'support/core_ext/hash'

# Include the additional XML::Mapping node types
require 'support/xml_mapping'

# Include the main program file
require 'ebay/ebay'