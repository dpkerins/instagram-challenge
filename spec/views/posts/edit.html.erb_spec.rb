require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      caption: "MyString",
      has_attachment: "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[caption]"

      assert_select "input[name=?]", "post[has_attachment]"
    end
  end
end
