require 'rails_helper'

RSpec.describe "individuals/new", type: :view do
  before(:each) do
    assign(:individual, Individual.new(
      first_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      phone_number: "MyString",
      company: nil
    ))
  end

  it "renders new individual form" do
    render

    assert_select "form[action=?][method=?]", individuals_path, "post" do

      assert_select "input[name=?]", "individual[first_name]"

      assert_select "input[name=?]", "individual[last_name]"

      assert_select "input[name=?]", "individual[email]"

      assert_select "input[name=?]", "individual[phone_number]"

      assert_select "input[name=?]", "individual[company_id]"
    end
  end
end
