require 'spec_helper'

describe "pieces/show.html.erb" do
  before(:each) do
    @piece = assign(:piece, stub_model(Piece,
      :title => "Title",
      :description => "MyText",
      :url => "Url",
      :medium => "Medium",
      :mime_type => "Mime Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain("Title".to_s)
    rendered.should contain("MyText".to_s)
    rendered.should contain("Url".to_s)
    rendered.should contain("Medium".to_s)
    rendered.should contain("Mime Type".to_s)
  end
end
