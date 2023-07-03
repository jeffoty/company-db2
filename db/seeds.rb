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


DepoSite.create(location_id: 1, name: "Depo2")
DepoSite.create(location_id: 1, name: "Depo3")
DepoSite.create(location_id: 1, name: "Depo4")
DepoSite.create(location_id: 1, name: "Depo5")
DepoSite.create(location_id: 1, name: "Depo6")
DepoSite.create(location_id: 1, name: "Depo1")


Constituency.create(name: "Lugari", depo_site_id: 1)
Constituency.create(name: "Likuyani", depo_site_id: 2)
Constituency.create(name: "Nayavakholo", depo_site_id: 5)
Constituency.create(name: "Malava", depo_site_id: 2)
Constituency.create(name: "Matungu", depo_site_id: 6)
Constituency.create(name: "Mumias West", depo_site_id: 4)
Constituency.create(name: "Mumias East", depo_site_id: 3)
Constituency.create(name: "Butere", depo_site_id: 6)
Constituency.create(name: "Lurambi", depo_site_id: 4)
Constituency.create(name: "Shinyalu", depo_site_id: 5)
Constituency.create(name: "Kwisero", depo_site_id: 1)
Constituency.create(name: "Ikolomani", depo_site_id: 3)




puts "Seeding completed🌱"

