# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


4.times do

    Gender.create(gender: Faker::HarryPotter.house)
end
# Gender.create(gender: "Niño")
# Gender.create(gender: "Niña")
# Gender.create(gender: "NiñX")

20.times do
    ThemeInterest.create(themesinterest: Faker::Book.genre) 
end
userN = 1; 
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
                        minicipality_id: m.id,
                        organization_category_id: org.id)
                        u = User.create(
                            email: "mailUser" + userN.to_s+ "@gmail.com",
                            password: "123456789",
                            name: Faker::HarryPotter.character,
                            username: Faker::Internet.user_name,
                            password_confirmation: "123456789"
                            )
                        up = UserPolymorphism.create(
                        user_id: u.id,
                            user_data_id: o.id,
                            user_data_type: "Organization")
                        userN = userN + 1
                else
                    o = Voluntary.create(
                        minicipality_id: m.id,
                        birthday: Faker::Date.birthday(18, 65),
                        gender_id: x+1,
                        cellphone: Faker::Number.number(10))
                    ThemeInterestsVoluntary.create(voluntary_id: o.id, theme_interest_id: 1)
                    u = User.create(
                        email: "mailUser" + userN.to_s+ "@gmail.com",
                        password: "123456789",
                        name: Faker::HarryPotter.character,
                        username: Faker::Internet.user_name,
                        password_confirmation: "123456789"
                        )
                    up = UserPolymorphism.create(
                    user_id: u.id,
                        user_data_id: o.id,
                        user_data_type: "Voluntary")
                    userN = userN + 1
                end
               

            end
        end
    end

end


10.times do |x|

    e = Event.create(organization_id: x/2+1,
        name: Faker::Team.name,
        description: Faker::Lovecraft.fhtagn(1),
        duration: x*10,
        start_datetime: Faker::Number.between(1526431956340, 1530334800000),
        max_voluntaries: x*8
        )
        2.times do
            Location.create(longitude: Faker::Address.longitude,
                            latitude: Faker::Address.latitude,
                            label: Faker::Hobbit.thorins_company,
                            person_name: Faker::BackToTheFuture.character,
                            email: Faker::Internet.email,
                            event_id: e.id )
        end
        Plu.create(name: Faker::Hacker.adjective,
                    event_id: e.id)

    EventVoluntary.create(voluntary_id: 1,
                            event_id: e.id)
end

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



