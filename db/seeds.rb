User.create!(email:"root@localhost",password:"admin123", password_confirmation:"admin123")
Customer.create!(name:"T-mobile")
Customer.create!(name:"O2")
Governing.create!(customer_id:1,user_id:1)
Governing.create!(customer_id:2,user_id:1)

10.times do 
  Visitor.create(name: Faker::Name.name, email: Faker::Internet.email , phone:Faker::PhoneNumber.cell_phone , identity_card_type: "IDcard", identity_card_number: Faker::IDNumber.valid_south_african_id_number , expires: Time.now , created_at: Time.now , updated_at: Time.now, customer_id: 1)
end