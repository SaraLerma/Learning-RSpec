require_relative '../../../../lib/wordpress/comments/client'

describe Wordpress::Comments::Client do

    let(:client) {Wordpress::Comments::Client.new 'http://mashable.com/comments/feed'}

    describe "#initialize" do

        it 'store a URL' do
            #create a Client instace with the argument 'http://mashable.com/comments/feed'
            expect(client.url).to eq 'http://mashable.com/comments/feed'
        end

    end

    describe "#parse" do

        let(:xml) {File.read(File.join('spec', 'fixtures', 'feed.xml'))}
        
        let(:comments) {client.parse xml}
        let(:comment) {comments.first}

        it 'extracts the link' do
            link= 'http://mashable.com/2012/07/18/ipad-early-photos/comment-page-1/#comment-18239503'
            expect(comment[:link]).to eq link
        end

    end
end