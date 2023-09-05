# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

 Department.destroy_all
#  Item.destroy_all

# Departments
@department_1 = Department.create!(department_name: "ATG", location: "Athens", in_stock: true, holding_power: 10)
@department_2 = Department.create!(department_name: "PDX", location: "Portland", in_stock: true, holding_power: 15)
@department_3 = Department.create!(department_name: "PHL", location: "Philadelphia", in_stock: false, holding_power: 8)