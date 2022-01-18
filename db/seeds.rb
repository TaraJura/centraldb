User.create!(email:"root@localhost",password:"admin123", password_confirmation:"admin123")
Customer.create!(name:"T-mobile")
Customer.create!(name:"O2")
Governing.create!(customer_id:1,user_id:1)
Governing.create!(customer_id:2,user_id:1)

