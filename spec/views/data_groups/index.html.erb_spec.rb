require 'spec_helper'

describe "data_groups/index.html.erb" do
  before(:each) do
    assign(:data_groups, [
      stub_model(DataGroup,
        :data_id => 1,
        :data_type => "Data Type",
        :group_id => 1,
        :order => 1
      ),
      stub_model(DataGroup,
        :data_id => 1,
        :data_type => "Data Type",
        :group_id => 1,
        :order => 1
      )
    ])
  end

  it "renders a list of data_groups" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Data Type".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
