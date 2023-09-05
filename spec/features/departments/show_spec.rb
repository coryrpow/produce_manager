require "rails_helper"

RSpec.describe "departments show" do
  before(:each) do
    @department_1 = Department.create!(department_name: "ATG", location: "Athens", in_stock: true, holding_power: 10)
    @department_2 = Department.create!(department_name: "PDX", location: "Portland", in_stock: true, holding_power: 15)
    @department_3 = Department.create!(department_name: "PHL", location: "Philadelphia", in_stock: false, holding_power: 8)
  end

  describe "departments show page" do
    it "can show the departments attributes when brought to the department id page" do
      visit "/departments/#{@department_1.id}"

      expect(page).to have_content(@department_1.department_name)
      expect(page).to have_content(@department_1.location)
      expect(page).to have_content(@department_1.in_stock)
      expect(page).to have_content(@department_1.holding_power)
    end
  end
end