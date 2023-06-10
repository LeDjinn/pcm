require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      name: "MyText",
      price_local: 1.5,
      price_export: 1.5,
      category: nil
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "textarea[name=?]", "article[name]"

      assert_select "input[name=?]", "article[price_local]"

      assert_select "input[name=?]", "article[price_export]"

      assert_select "input[name=?]", "article[category_id]"
    end
  end
end
