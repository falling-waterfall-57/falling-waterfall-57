require 'spec_helper'

describe "pieces/index.html.erb" do
  before(:each) do
    assign(:pieces, [
      stub_model(Piece,
        :title => "Title",
        :description => "MyText",
        :url => "Url",
        :medium => "Medium",
        :mime_type => "Mime Type"
      ),
      stub_model(Piece,
        :title => "Title",
        :description => "MyText",
        :url => "Url",
        :medium => "Medium",
        :mime_type => "Mime Type"
      )
    ])
  end

  it "renders a list of pieces" do
    render
    rendered.should have_selector("tr>td", :content => "Title".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "MyText".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Url".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Medium".to_s, :count => 2)
    rendered.should have_selector("tr>td", :content => "Mime Type".to_s, :count => 2)
  end
end
