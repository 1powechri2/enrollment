require 'rails_helper'

describe Student do
  describe "validations" do
    it {should validate_presence_of(:name)}
  end
  describe "relationships" do
    it "belongs to an address" do
      student = Student.create(name: "Jo Bo")
      expect(student).to respond_to(:address)
    end
  end
end
