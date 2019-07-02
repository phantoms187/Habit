User.create!(name:  "Dave",
             email: "dave@email.edu",
             password:              "hockey",
             password_confirmation: "hockey",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Meg",
             email: "megdisario@gmail.com",
             password:              "miaisthebest",
             password_confirmation: "miaisthebest",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)
             
User.create!(name:  "Batman",
             email: "thebat@gmail.edu",
             password:              "miaisthebest",
             password_confirmation: "miaisthebest",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Trip",
             email: "warrend187@gmail.com",
             password:              "megandmia",
             password_confirmation: "megandmia",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)



