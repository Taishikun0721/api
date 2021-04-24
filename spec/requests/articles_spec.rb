require 'rails_helper'

RSpec.describe "Articles", type: :request  do
  before do
    create(:article)
  end
  it 'returns a success respose' do
    get articles_url
    expect(response).to have_http_status(:ok)
  end
end

