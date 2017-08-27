require 'rails_helper'

describe Message, type: :model do
  context "with valid attributes" do
    it "is effective with a message" do
      message = build(:message)
      expect(message).to be_valid
    end
  end

  context "with invalid attributes" do
    it "is invalid without a message" do
      message = build(:message, text: "")
      message.valid?
      expect(message.errors[:text]).to include("を入力してください")
    end
  end
end