require 'rails_helper'

RSpec.describe Comment, type: :model do
  before :each do
    comment=Comment.new(text: 'ein kommentar')
  end

  describe "#new" do
    it "neues comment ohne message" do
      @comment.should be_nil
    end
  end
end
