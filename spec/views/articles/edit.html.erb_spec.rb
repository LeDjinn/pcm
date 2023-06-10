require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  let(:article) {
    Article.create!(
      name: "MyText",
      price_local: 1.5,
      price_export: 1.5,
      category: nil
    )
  }

  before(:each) do
    assign(:article, article)
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(article), "post" do

      assert_select "textarea[name=?]", "article[name]"

      assert_select "input[name=?]", "article[price_local]"

      assert_select "input[name=?]", "article[price_export]"

      assert_select "input[name=?]", "article[category_id]"
    end
  end
end
