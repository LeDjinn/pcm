require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      name: "MyString",
      address: "MyText",
      country: "MyString",
      email: "MyString",
      phone_number: "MyString",
      siret: "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input[name=?]", "company[name]"

      assert_select "textarea[name=?]", "company[address]"

      assert_select "input[name=?]", "company[country]"

      assert_select "input[name=?]", "company[email]"

      assert_select "input[name=?]", "company[phone_number]"

      assert_select "input[name=?]", "company[siret]"
    end
  end
end
