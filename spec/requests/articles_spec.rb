require 'rails_helper'

RSpec.describe "Articles", type: :request  do
  before do
    create(:article)
  end
  it 'returns a success respose' do
    get articles_url
    expect(response).to have_http_status(:ok)
  end

  describe '#index' do
    let(:article) { create(:article) }
    let(:spec) {
      {
        "data": [
            {
                "id": "1",
                "type": "articles",
                "attributes": {
                    "title": "sampletitle",
                    "content": "sample content"
                }
            }
        ]
    }
  }
    before do
      get articles_url
    end
    context '正常な値が返却される事' do
      it { expect(response.body).to be_json_as(spec) }
    end
  end
end

