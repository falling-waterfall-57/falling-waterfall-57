require 'spec_helper'

describe "data_tags/new.html.erb" do
  before(:each) do
    assign(:data_tag, stub_model(DataTag,
      :new_record? => true,
      :data_id => 1,
      :data_type => "MyString",
      :tag_id => 1
    ))
  end

  it "renders new data_tag form" do
    render

    rendered.should have_selector("form", :action => data_tags_path, :method => "post") do |form|
      form.should have_selector("input#data_tag_data_id", :name => "data_tag[data_id]")
      form.should have_selector("input#data_tag_data_type", :name => "data_tag[data_type]")
      form.should have_selector("input#data_tag_tag_id", :name => "data_tag[tag_id]")
    end
  end
end
