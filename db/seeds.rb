# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# seeds.rb


puts "Seeding"

# Seed data for tbl_genders
genders = [
    { gender_name: 'Male' },
    { gender_name: 'Female' },
    { gender_name: 'Other' }
  ]
  
  Gender.create(genders)
  
  # Seed data for tbl_services
  services = [
    { service_name: 'Service 1' },
    { service_name: 'Service 2' },
    { service_name: 'Service 3' }
  ]
  
  Service.create(services)
  
  # Seed data for tbl_patients
  patients = [
    { name: 'John Doe', age: 30, gender_id: 1, service_id: 1 },
    { name: 'Jane Smith', age: 25, gender_id: 2, service_id: 2 },
    { name: 'Alex Johnson', age: 40, gender_id: 1, service_id: 3 }
  ]
  
  Patient.create(patients)
  
puts "Done Seeding"

