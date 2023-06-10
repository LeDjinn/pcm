require 'rails_helper'

RSpec.describe "individuals/edit", type: :view do
  let(:individual) {
    Individual.create!(
      first_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      phone_number: "MyString",
      company: nil
    )
  }

  before(:each) do
    assign(:individual, individual)
  end

  it "renders the edit individual form" do
    render

    assert_select "form[action=?][method=?]", individual_path(individual), "post" do

      assert_select "input[name=?]", "individual[first_name]"

      assert_select "input[name=?]", "individual[last_name]"

      assert_select "input[name=?]", "individual[email]"

      assert_select "input[name=?]", "individual[phone_number]"

      assert_select "input[name=?]", "individual[company_id]"
    end
  end
end
