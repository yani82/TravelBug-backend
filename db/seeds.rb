# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Shalom = User.create(name: "Shalom", email: "shalom@example.com")
Dana = User.create(name: "Dana", email: "dana@example.com") 
Wayne = User.create(name: "Wayne", email: "wayne@example.com") 
Daniel = User.create(name: "Daniel", email: "daniel@example.com") 
Cinna = User.create(name: "Cinna", email: "cinna@example.com") 

Travelbug.create([
    { body: 'Malaysia is currently in their fourth-wave, and are in a full lockdown for 10 days. All travellers must undergo a mandatory 14-day quarantine at quarantine centres.'},
    { body: 'All travellers to Italy could be subject to self-isolation for 10 days and to a COVID-19 antigen or molecular test at the end of self-isolation.'},
    { body: 'All travellers are not allowed to enter Japan if in the past 14 days they have been in international countries, but does not apply to Japanese nationals and other terms.'},
    { body: 'All travellers are not allowed to enter Australia, except if they are nationals and their immediate family members as well as other terms.'},
    { body: 'All travellers are not allowed to enter Portugal, except if they are nationals and their immediate family members as well as other terms.'}
    ])