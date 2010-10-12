require 'spec_helper'

describe "data_groups/show.html.erb" do
  before(:each) do
    @data_group = assign(:data_group, stub_model(DataGroup,
      :data_id => 1,
      :data_type => "Data Type",
      :group_id => 1,
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(1.to_s)
    rendered.should contain("Data Type".to_s)
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
  end
end
