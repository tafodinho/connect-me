require 'rails_helper'

RSpec.describe User, type: :model do

    let(:user) { User.new(
        name: "Aaron",
        image:  "avatar.jpg",
        email:      "tester@example.com",
        password:   "dottle-nouveau-pavilion-tights-furze",
    )}
    let(:user2) {  User.new(
        name:  "Joe",
        image:  "avatar.jpg",
        email:      "tester@example.com",
        password:   "dottle-nouveau-pavilion-tights-furze",
      )}
    let(:user3) {  User.new(
        name:  "Joe",
        image:  nil,
        email:      "tester@example.com",
        password:   "dottle-nouveau-pavilion-tights-furze",
      )}

    it "is valid with a  name, image, email, and password" do
        expect(user).to be_valid
    end
    it "is invalid with a duplicate email address" do
        user2.save
        user.valid?
        expect(user.errors[:email]).to include("has already been taken")
    end
        it "should return the string avatar.jpeg" do
        expect(user3.add_missing_piece).to eq("avatar.jpeg")
    end
end