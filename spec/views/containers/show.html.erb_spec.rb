require 'spec_helper'

describe "containers/show.html.erb" do
  before(:each) do
    @container = assign(:container, stub_model(Container,
      :view_id => 1,
      :group_id => 1,
      :position_x => 1,
      :position_y => 1,
      :size_x => 1,
      :size_y => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
    rendered.should contain(1.to_s)
  end
end
