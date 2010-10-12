require 'spec_helper'

describe "data_groups/edit.html.erb" do
  before(:each) do
    @data_group = assign(:data_group, stub_model(DataGroup,
      :new_record? => false,
      :data_id => 1,
      :data_type => "MyString",
      :group_id => 1,
      :order => 1
    ))
  end

  it "renders the edit data_group form" do
    render

    rendered.should have_selector("form", :action => data_group_path(@data_group), :method => "post") do |form|
      form.should have_selector("input#data_group_data_id", :name => "data_group[data_id]")
      form.should have_selector("input#data_group_data_type", :name => "data_group[data_type]")
      form.should have_selector("input#data_group_group_id", :name => "data_group[group_id]")
      form.should have_selector("input#data_group_order", :name => "data_group[order]")
    end
  end
end
