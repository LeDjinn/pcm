require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        name: "Name",
        address: "MyText",
        country: "Country",
        email: "Email",
        phone_number: "Phone Number",
        siret: "Siret"
      ),
      Company.create!(
        name: "Name",
        address: "MyText",
        country: "Country",
        email: "Email",
        phone_number: "Phone Number",
        siret: "Siret"
      )
    ])
  end

  it "renders a list of companies" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Country".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Email".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Phone Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Siret".to_s), count: 2
  end
end
