# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lawyer.create(full_name: "Bowers", username: "Bowers", email: "bowers-solicitors.com", password_digest: "Bowers", image: "https://images.unsplash.com/photo-1539627831859-a911cf04d3cd?ixlib=rb-1.2.1&auto=format&fit=crop&w=1351&q=80", location: "174 Granville Rd, London NW2 2LD", price_hour: "£50", latitude: "51.5674204", longitude: "-0.2002066")
Lawyer.create(full_name: "Dr Claudio Del Giudice", username: "claudio.degiudice", email: "italy-uk-law.com", password_digest: "claudio", image: "https://lh5.googleusercontent.com/p/AF1QipO_-z69f7khV3VNNb4_0G-Dy0PkvKMJpXH_pyB7=w408-h306-k-no", location: "30th floor, 40 Bank St, Canary Wharf, London E14 5NR", price_hour: "£90", latitude: "51.5025002", longitude: "-0.0212704")
Lawyer.create(full_name: "Giambrone Law", username: "giampirone.law", email: "giampirone@gl.com", password_digest: "giampirone", image: "https://lh5.googleusercontent.com/p/AF1QipP0bTPt06ibBAY7rJ2HQUGoAITRX2U_sYaGdRk=w408-h271-k-no", location: "12 Bridewell Pl, London EC4V 6AP", price_hour: "£150", latitude: "51.5131611", longitude: "-0.1067637")
