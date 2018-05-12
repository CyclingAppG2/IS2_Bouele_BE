# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gender.create(gender: "Niño")
Gender.create(gender: "Niña")
Gender.create(gender: "NiñX")

20.times do
    ThemeInterest.create(themesinterest: Faker::Book.genre)
    
end
3.times do
    org = OrganizationCategory.create(name: Faker::Commerce.department)
    5.times do
        d = Department.create(name: Faker::Space.constellation)
        4.times do
            m = Minicipality.create(name: Faker::RickAndMorty.location, department_id: d.id )
            2.times do |x|
                if x%2==0
                    o = Organization.create(
                        NIT: Faker::Color.hex_color,
                        mainaddress: Faker::Zelda.game,
                        firm: Faker::Hacker.say_something_smart,
                        organization_score: 5,
                        minicipality_id: m.id,
                        organization_category_id: org.id)
                else
                    o = Voluntary.create(
                        minicipality_id: m,
                        birthday: Faker::Date.birthday(18, 65),
                        gender_id: x+1,
                        cellphone: Faker::PhoneNumber.phone_number)
                    ThemeInterestsVoluntary.create(voluntary_id: o.id, theme_interest_id: 1)
                end
                
                u = User.create(
                    email: Faker::Internet.free_email,
                    password: "123456789",
                    name: Faker::HarryPotter.character,
                    username: Faker::Internet.user_name,
                    password_confirmation: "123456789"
                    )
                up = UserPolymorphism.create(
                user_id: u.id,
                    user_data_id: o.id,
                    user_data_type: "Organization")

            end
        end
    end

end
####Usuarios 20

    # v = Voluntary.new(
    #     gender: Faker::Lovecraft.deity,
    #     cellphone: "320320420",
    #     voluntary_score: 5,
	# city: "Hazing"
    #     )
    # v.save!

    # u = User.new(
    #     email: Faker::Internet.free_email,
    #     password: "123456789",
    #     name: Faker::HarryPotter.character,
    #     username: Faker::Internet.user_name,
    #     password_confirmation: "123456789"
    #     )
    # u.save!

    # up = UserPolymorphism.create(
	# user_id: u.id,
    #     user_data_id: v.id,
    #     user_data_type: "Voluntary")
    # #up.save!





Event.create(organization_id: 2,
	name: "Testing",
	description: Faker::Lovecraft.fhtagn(10),
	duration: 5,
	)

EventVoluntary.create(voluntary_id: 1,
	event_id: 1)

Admin.create(email: "caralopezrom@unal.edu.co",
                password: "123456789",
                password_confirmation: "123456789",
                username: "caralopezrom",
                name: "Carlos Arturo lopez Romero")
Admin.create(email: "adavilame@unal.edu.co ",
    password: "123456789",
    password_confirmation: "123456789",
    username: "adavilam",
    name: "Angel David Avila ")

TypeContact.create(name: "Queja")
TypeContact.create(name: "Peticion")
TypeContact.create(name: "Reclamo")

10.times do
    r = Reason.create(name: Faker::Lorem.paragraph)
    10.times do
        Ban.create(
            log: Faker::GameOfThrones.house,
            reason_id: r.id,
            starttime: DateTime.now,
            endtime: DateTime.now + 15.days,
            user_id: 1,
            admin_id: 1
            )
    end
end



