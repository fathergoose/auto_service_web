require 'rails_helper'

RSpec.describe "resources/show", type: :view do
  before(:each) do
    @resource = assign(:resource, Resource.create!(
      :name => "Name",
      :address => "Address",
      :phone => "Phone",
      :description => "MyText",
      :city => "City",
      :state => 1,
      :zipcode => "Zipcode",
      :food => false,
      :health => false,
      :shelter => false,
      :user_id => 2,
      :latitude => 1.5,
      :longitude => 1.5,
      :street => "Street",
      :shares => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/3/)
  end
end
