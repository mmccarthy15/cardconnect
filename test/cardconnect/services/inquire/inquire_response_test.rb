require 'test_helper'

describe InquireResponse do
  describe "#body" do
    before do
      @response = InquireResponse.new(valid_inquire_response)
    end

    after do
      @response = nil
    end

    it 'should generate hash with all the right values' do
      valid_payload = symbolize_keys(valid_inquire_response)
      @response.body.keys.each do |k|
        @response.body[k].must_equal valid_payload[k]
      end
    end
  end
end