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

Country.create([
        { name: 'Malaysia'},
        { name: 'Italy'},
        { name: 'Japan'},
        { name: 'Australia'},
        { name: 'Portugal'} 
        ])  

Travelbug.create([
    { country_id: 1, body: 'Malaysia is currently in their fourth-wave, and are in a full lockdown for 10 days. All travellers must undergo a mandatory 14-day quarantine at quarantine centres.'},
    { country_id: 2,body: 'All travellers to Italy could be subject to self-isolation for 10 days and to a COVID-19 antigen or molecular test at the end of self-isolation.'},
    { country_id: 3,body: 'All travellers are not allowed to enter Japan if in the past 14 days they have been in international countries, but does not apply to Japanese nationals and other terms.'},
    { country_id: 4,body: 'All travellers are not allowed to enter Australia, except if they are nationals and their immediate family members as well as other terms.'},
    { country_id: 5,body: 'All travellers are not allowed to enter Portugal, except if they are nationals and their immediate family members as well as other terms.'}
    ])

Comment.create([
        { user_id: 1, country_id: 1, body: 'After our 10-day quarantine, we were able to explore Kuala Lumpur a little bit. The quarantine center was actually a five-star hotel.'},
        { user_id: 2, country_id: 2, body: 'We were able to self-isolate where we were booked or with relatives for the whole 10-day quarantine, and spend some quality time with them before exploring.'},
        { user_id: 3, country_id: 3, body: 'They are very strict here with their travel restrictions.'},
        { user_id: 4, country_id: 4, body: 'Unfortunately, due to the delta variant, they had to be on lock down again for a couple of weeks.'},
        { user_id: 5, country_id: 5, body: 'Since their numbers are under control, we were able to visit with minimal restrictions.'} 
        ])  
     