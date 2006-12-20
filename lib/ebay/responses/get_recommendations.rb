require 'ebay/types/listing_analyzer_recommendations'
require 'ebay/types/sifftas_recommendations'
require 'ebay/types/pricing_recommendations'
require 'ebay/types/attribute_recommendations'
require 'ebay/types/product_info'

module Ebay # :nodoc:
  module Responses # :nodoc:
    class GetRecommendations < Abstract
      include XML::Mapping
      include Initializer
      root_element_name 'GetRecommendationsResponse'
      object_node :listing_analyzer_recommendations, 'ListingAnalyzerRecommendations', :class => ListingAnalyzerRecommendations, :optional => true
      object_node :sifftas_recommendations, 'SIFFTASRecommendations', :class => SIFFTASRecommendations, :optional => true
      object_node :pricing_recommendations, 'PricingRecommendations', :class => PricingRecommendations, :optional => true
      object_node :attribute_recommendations, 'AttributeRecommendations', :class => AttributeRecommendations, :optional => true
      array_node :product_recommendations, 'ProductRecommendations', 'Product', :class => ProductInfo, :default_value => []
    end
  end
end

