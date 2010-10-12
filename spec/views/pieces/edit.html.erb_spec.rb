require 'spec_helper'

describe "pieces/edit.html.erb" do
  before(:each) do
    @piece = assign(:piece, stub_model(Piece,
      :new_record? => false,
      :title => "MyString",
      :description => "MyText",
      :url => "MyString",
      :medium => "MyString",
      :mime_type => "MyString"
    ))
  end

  it "renders the edit piece form" do
    render

    rendered.should have_selector("form", :action => piece_path(@piece), :method => "post") do |form|
      form.should have_selector("input#piece_title", :name => "piece[title]")
      form.should have_selector("textarea#piece_description", :name => "piece[description]")
      form.should have_selector("input#piece_url", :name => "piece[url]")
      form.should have_selector("input#piece_medium", :name => "piece[medium]")
      form.should have_selector("input#piece_mime_type", :name => "piece[mime_type]")
    end
  end
end
