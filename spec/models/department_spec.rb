require 'rails_helper'

describe Department, type: :model do
  describe "validations" do
    it {should have_many(:items)}
  end
end