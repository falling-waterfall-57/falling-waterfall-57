require 'spec_helper'

describe "comments/show.html.erb" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :media_id => 1,
      :comments => "Comments",
      :from => "From",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should contain(1.to_s)
    rendered.should contain("Comments".to_s)
    rendered.should contain("From".to_s)
    rendered.should contain("Email".to_s)
  end
end
