require 'rails_helper'

RSpec.describe "individuals/index", type: :view do
  before(:each) do
    assign(:individuals, [
      Individual.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        phone_number: "Phone Number",
        company: nil
      ),
      Individual.create!(
        first_name: "First Name",
        last_name: "Last Name",
        email: "Email",
        phone_number: "Phone Number",
        company: nil
      )
    ])
  end

  it "renders a list of individuals" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
