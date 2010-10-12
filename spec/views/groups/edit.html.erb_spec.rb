require 'spec_helper'

describe "groups/edit.html.erb" do
  before(:each) do
    @group = assign(:group, stub_model(Group,
      :new_record? => false,
      :name => "MyString"
    ))
  end

  it "renders the edit group form" do
    render

    rendered.should have_selector("form", :action => group_path(@group), :method => "post") do |form|
      form.should have_selector("input#group_name", :name => "group[name]")
    end
  end
end
