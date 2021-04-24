require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { create(:article) }
  it 'tests article object' do
    expect(article.title).to eq 'sample title'
  end

  it 'tests factory is valid' do
    article.title = nil
    expect(article).to_not be_valid
  end
end
