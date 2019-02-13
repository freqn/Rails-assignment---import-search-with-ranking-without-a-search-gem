require 'rails_helper'

describe 'article search' do

  before(:each) do
    @articles = create_list(:article, 4)
    @articles[1].update(body: "lorem ipsum sans dolor")
    @articles[2].update(title: "Jumping from planes")
  end

  let (:param_1) { "dol" }
  let (:param_2) { "jump" }
  let (:param_3) { "/" }

  context 'articles containing search text' do
    it "finds articles with body containing search text" do
      expect(Article.search(param_1)).to eq [@articles[1]]
    end
  
    it "finds articles with body containing search text" do
      expect(Article.search(param_2)).to eq [@articles[2]]
    end
  end

  context 'articles not containing search text' do
    it "returns nothing when search text is not found" do
      expect(Article.search(param_3).count).to eq 0
    end
  end

  context 'empty search text' do
    it "returns all articles when search is empty or blank" do
      expect(Article.search('').count).to eq @articles.count
    end
  end

  context 'ranking relevant results' do
    before do
      @articles[3].update(title: 'dolor en lateralus')
    end

    it 'ranks titles containing search string as most relevant ' do
      expect(Article.search(param_1).first).to eq @articles[3]
    end

    it 'ranks body containing search string as least relevant' do
      expect(Article.search(param_1).last).to eq @articles[1]
    end
  end
end
