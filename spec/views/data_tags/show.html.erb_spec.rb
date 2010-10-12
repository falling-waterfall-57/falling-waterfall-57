require 'spec_helper'

describe "data_tags/show.html.erb" do
  before(:each) do
    @data_tag = assign(:data_tag, stub_model(DataTag,
      :data_id => 1,
      :data_type => "Data Type",
      :tag_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(1.to_s)
    rendered.should contain("Data Type".to_s)
    rendered.should contain(1.to_s)
  end
end
