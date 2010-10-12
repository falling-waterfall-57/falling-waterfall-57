require 'spec_helper'

describe "containers/index.html.erb" do
  before(:each) do
    assign(:containers, [
      stub_model(Container,
        :view_id => 1,
        :group_id => 1,
        :position_x => 1,
        :position_y => 1,
        :size_x => 1,
        :size_y => 1
      ),
      stub_model(Container,
        :view_id => 1,
        :group_id => 1,
        :position_x => 1,
        :position_y => 1,
        :size_x => 1,
        :size_y => 1
      )
    ])
  end

  it "renders a list of containers" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
