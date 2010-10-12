require 'spec_helper'

describe "data_tags/index.html.erb" do
  before(:each) do
    assign(:data_tags, [
      stub_model(DataTag,
        :data_id => 1,
        :data_type => "Data Type",
        :tag_id => 1
      ),
      stub_model(DataTag,
        :data_id => 1,
        :data_type => "Data Type",
        :tag_id => 1
      )
    ])
  end

  it "renders a list of data_tags" do
    render
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Data Type".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => 1.to_s, :count => 2)
  end
end
