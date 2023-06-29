AdminUser.create!(email: 'admin@example.com', password: 'password') if Rails.env.development?
Setting.create_or_find_by!(key: 'min_version', value: '0.0')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Role.destroy_all
Location.destroy_all
DepoSite.destroy_all

puts "seeding🌱 database"

Role.create(name:"admin")
# Role.create(name:"manager")
Role.create(name:"Secretary")
Role.create(name:"customer")
Role.create(name:"employee")
Role.create(name:"Operations Manager")
Role.create(name:"Site Manager")
Role.create(name:"Accountant")
Role.create(name:"Logistician")
Role.create(name:"CEO")
Role.create(name:"Managing Director")
Role.create(name:"IT Department")
Role.create(name:"HR Office")
Role.create(name:"Accounts Office")
Role.create(name:"Reception")
Role.create(name:"County Sales Coordinator")
Role.create(name:"Purchasing Officer")
Role.create(name:"Assistant Purchasing Officer")
Role.create(name:"Deposite Managers")


Location.create(name: "Nairobi")
Location.create(name: "Kitengela")
Location.create(name: "Kakamega")


DepoSite.create(location_id: 3, name: "Depo1")
DepoSite.create(location_id: 3, name: "Depo2")
DepoSite.create(location_id: 3, name: "Depo3")
DepoSite.create(location_id: 3, name: "Depo4")
DepoSite.create(location_id: 3, name: "Depo5")
DepoSite.create(location_id: 3, name: "Depo6")


# Deposite.create(location_id: Location.all.sample.id, name: "Lugari")
# Deposite.create(location_id: Location.all.sample.id, name: "Likuyani")
# Deposite.create(location_id: Location.all.sample.id, name: "Nayavakholo")
# Deposite.create(location_id: Location.all.sample.id, name: "Malava")
# Deposite.create(location_id: Location.all.sample.id, name: "Matungu")
# Deposite.create(location_id: Location.all.sample.id, name: "Mumias West")
# Deposite.create(location_id: Location.all.sample.id, name: "Mumias East")
# Deposite.create(location_id: Location.all.sample.id, name: "Butere")
# Deposite.create(location_id: Location.all.sample.id, name: "Lurambi")
# Deposite.create(location_id: Location.all.sample.id, name: "Shinyalu")
# Deposite.create(location_id: Location.all.sample.id, name: "Kwisero")
# Deposite.create(location_id: Location.all.sample.id, name: "Ikolomani")




puts "Seeding completed🌱"

