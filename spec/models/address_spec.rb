require 'rails_helper'

describe Address do
  describe "validations" do
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:street_address)}
    it {should validate_presence_of(:city)}
    it {should validate_presence_of(:state)}
    it {should validate_presence_of(:zip_code)}
  end
end
