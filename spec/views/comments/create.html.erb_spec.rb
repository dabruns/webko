require 'rails_helper'

RSpec.describe 'comments/create.html.erb', type: :view do
  before :each do
    @comment=Comment.new()
  end

  describe "#new" do
    it "Sollte objekt von Comment sein" do
      @comment.should be_an_instance_of Comment
    end
  end
end
