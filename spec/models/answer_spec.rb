require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) {Question.create!(title: "New Question", body: "This is the Question Body")}
  let(:answer) {Answer.create!(body:'this is the answer', question: question)}
  describe "attributes" do
    it "should respond to body" do
      expect(answer).to respond_to(:body)
    end
  end
end
