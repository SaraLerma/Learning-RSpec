#require 'jquery-rails'
require 'nokogiri'

module Wordpress
    module Comments
        class Client

            attr_reader :url

            def initialize url
                @url = url
            end
            def parse xml
                doc = Nokogiri::XML xml
                doc.search('item').map do |doc_item|
                    item = {}
                    item[:link] = doc_item.at('link').text
                    item
                end
            end
        end
    end
end