module Wordpress
    module Comments
        class Client

            attr_reader :url

            def initialize url
                @url = url

            end
        end
    end
end

describe Wordpress::Comments::Client do

    it 'store a URL' do
        #create a Client instace with the argument 'http://mashable.com/comments/feed'
        client = Wordpress::Comments::Client.new 'http://mashable.com/comments/feed'
        expect(client.url).to eq 'http://mashable.com/comments/feed'
    end
end