require 'spec_helper'

describe "groups/new.html.erb" do
  before(:each) do
    assign(:group, stub_model(Group,
      :new_record? => true,
      :name => "MyString"
    ))
  end

  it "renders new group form" do
    render

    rendered.should have_selector("form", :action => groups_path, :method => "post") do |form|
      form.should have_selector("input#group_name", :name => "group[name]")
    end
  end
end
