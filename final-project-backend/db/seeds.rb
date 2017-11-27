# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Eugene", last_name:"DiBenedetto", email:"eldibenedetto@gmail.com", password: "123", phone_number:"9176484046", street_address:"123 Street St.", city: "Brooklyn", state_territory: "NY", zip_code: "11201", state_territory_dl: "NY", drivers_license_id: "123456789")

User.create(first_name: "Natalie", last_name:"Perp", email:"natieperp@gmail.com", password: "123", phone_number:"18001234567", street_address:"42 Jersey Ave.", city: "Jersey", state_territory: "NJ", zip_code: "22222", state_territory_dl: "NJ", drivers_license_id: "987654321")

User.create(first_name: "Johann", last_name:"Kerr", email:"johann@flatironschool.com", password: "123", phone_number:"6463219647", street_address:"11 Broadway", city: "NY", state_territory: "NY", zip_code: "11001", state_territory_dl: "NY", drivers_license_id: "555555555")

Car.create(owner_id: 1, make: "Honda", model: "Accord", year: "2012", image: "https://media.ed.edmunds-media.com/honda/accord/2012/oem/2012_honda_accord_coupe_ex-l-v-6_fq_oem_1_500.jpg", price: 25, address: "123 Pierrepont St. Brooklyn, NY 11201")
Car.create(owner_id: 2, make: "Acura", model: "RL", year: "2012", image: "https://media.caranddriver.com/images/08q4/267455/2011-2012-acura-rl-gets-a-v-8-photo-236571-s-450x274.jpg", price: 50, address: "40 Springhurst Rd. Bedford Hills, NY 10507")
Car.create(owner_id: 3, make: "Mercedes", model: "E55 AMG", year: "2003", image: "http://www.dragtimes.com/images/17128-2003-Mercedes-Benz-E55-AMG.jpg", price: 75, address: "258 Beach 130th St. Belle Harbor, NY 11694")
Car.create(owner_id: 1, make: "Honda", model: "Accord", year: "2012", image: "https://media.ed.edmunds-media.com/honda/accord/2012/oem/2012_honda_accord_coupe_ex-l-v-6_fq_oem_1_500.jpg", price: 35, address: "123 Pierrepont St. Brooklyn, NY 11201")
Car.create(owner_id: 2, make: "Acura", model: "RL", year: "2012", image: "https://media.caranddriver.com/images/08q4/267455/2011-2012-acura-rl-gets-a-v-8-photo-236571-s-450x274.jpg", price: 80, address: "40 Springhurst Rd. Bedford Hills, NY 10507")
Car.create(owner_id: 3, make: "Mercedes", model: "E55 AMG", year: "2003", image: "http://www.dragtimes.com/images/17128-2003-Mercedes-Benz-E55-AMG.jpg", price: 100, address: "258 Beach 130th St. Belle Harbor, NY 11694")

Reservation.create(guest_id: 1, car_id: 1, start_date: "Tue, 07 Nov 2017", end_date: "Fri, 10 Nov 2017")
Reservation.create(guest_id: 2, car_id: 1, start_date: "Fri, 08 Dec 2017", end_date: "Sun, 10 Dec 2017")
Reservation.create(guest_id: 1, car_id: 2, start_date: "Mon, 20 Nov 2017", end_date: "Sat, 25 Nov 2017")

PendingReservation.create(guest_id: 1, car_id: 1, start_date: "Tue, 07 Nov 2017", end_date: "Fri, 10 Nov 2017")
PendingReservation.create(guest_id: 2, car_id: 1, start_date: "Fri, 08 Dec 2017", end_date: "Sun, 10 Dec 2017")
PendingReservation.create(guest_id: 1, car_id: 2, start_date: "Mon, 20 Nov 2017", end_date: "Sat, 25 Nov 2017")
