# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lawyer.create(
  full_name: "Harvey Specter",
  username: "Harvey",
  password_digest: "harvey",
  image: "https://imagizer.imageshack.com/img921/8436/CLJCBA.jpg",
  location: "London",
  latitude: 51.551009,
  longitude: -0.256596,
  field: "Commercial Law",
  price_hour: 550,
  rating: 5,
  description: "Harvey acts for private equity houses and other financial sponsors on acquisitions and disposals. He is recognised as a Next Generation Lawyer by Legal 500 UK 2017."
)





Availability.create(day: "21/06/2019", time: "9.00 am", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "10.00 am", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "11.00 am", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "12.00 am", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "13.00 am", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "2.00 pm", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "3.00 pm", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "4.00 pm", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "5.00 pm", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "6.00 pm", duration: 1, lawyer_id: 15, booked: nil)
Availability.create(day: "21/06/2019", time: "7.00 pm", duration: 1, lawyer_id: 15, booked: nil)
