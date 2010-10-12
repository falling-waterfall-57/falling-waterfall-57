require 'spec_helper'

describe "data_tags/edit.html.erb" do
  before(:each) do
    @data_tag = assign(:data_tag, stub_model(DataTag,
      :new_record? => false,
      :data_id => 1,
      :data_type => "MyString",
      :tag_id => 1
    ))
  end

  it "renders the edit data_tag form" do
    render

    rendered.should have_selector("form", :action => data_tag_path(@data_tag), :method => "post") do |form|
      form.should have_selector("input#data_tag_data_id", :name => "data_tag[data_id]")
      form.should have_selector("input#data_tag_data_type", :name => "data_tag[data_type]")
      form.should have_selector("input#data_tag_tag_id", :name => "data_tag[tag_id]")
    end
  end
end
