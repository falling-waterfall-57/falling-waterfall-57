require 'spec_helper'

describe "containers/new.html.erb" do
  before(:each) do
    assign(:container, stub_model(Container,
      :new_record? => true,
      :view_id => 1,
      :group_id => 1,
      :position_x => 1,
      :position_y => 1,
      :size_x => 1,
      :size_y => 1
    ))
  end

  it "renders new container form" do
    render

    rendered.should have_selector("form", :action => containers_path, :method => "post") do |form|
      form.should have_selector("input#container_view_id", :name => "container[view_id]")
      form.should have_selector("input#container_group_id", :name => "container[group_id]")
      form.should have_selector("input#container_position_x", :name => "container[position_x]")
      form.should have_selector("input#container_position_y", :name => "container[position_y]")
      form.should have_selector("input#container_size_x", :name => "container[size_x]")
      form.should have_selector("input#container_size_y", :name => "container[size_y]")
    end
  end
end
