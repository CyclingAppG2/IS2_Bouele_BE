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
 
50.times do |x|
    org = OrganizationCategory.create(name: Faker::Commerce.department)
        d = Department.create(name: Faker::Space.constellation)

            m = Minicipality.create(name: Faker::RickAndMorty.location, department_id: d.id )

                if x< 4
                    o = Organization.create(NIT: Faker::Color.hex_color,
                        mainaddress: Faker::Zelda.game,
                        firm: Faker::Hacker.say_something_smart,
                        minicipality_id: m.id,
                        organization_category_id: org.id,
                        created_at: Time.new(2016,1,1)
                        )
                        s = Faker::LoremFlickr.image("200x200", ['object'])
                        uri = URI.parse(s)
                        tries = 3
                        im = nil
                        begin
                            uri.open(redirect: false)
                            rescue OpenURI::HTTPRedirect => redirect
                            uri = redirect.uri # assigned from the "Location" response header
                            im =  uri
                            retry if (tries -= 1) > 0
                            raise
                        end
                        u = User.create(
                            email: "mailUser" + x.to_s+ "@gmail.com",
                            password: "123456789",
                            name: Faker::HarryPotter.character,
                            username: Faker::Internet.user_name,
                            password_confirmation: "123456789"                            
                            )
                        u.update(remote_image_url: im.to_s)                            
                        up = UserPolymorphism.create(
                        user_id: u.id,
                            user_data_id: o.id,
                            user_data_type: "Organization")

                else
                    o = Voluntary.create(
                        minicipality_id: m.id,
                        birthday: Faker::Date.birthday(18, 65),
                        gender_id: x%2==0 ? 1 : 2,
                        cellphone: Faker::Number.number(10))
                    ThemeInterestsVoluntary.create(voluntary_id: o.id, theme_interest_id: 1)
                    s = Faker::LoremFlickr.image("200x200", ['man', 'women'])
                    uri = URI.parse(s)
                    tries = 3
                    im = nil
                    begin
                        uri.open(redirect: false)
                        rescue OpenURI::HTTPRedirect => redirect
                        uri = redirect.uri # assigned from the "Location" response header
                        im =  uri
                        retry if (tries -= 1) > 0
                        raise
                    end
                    u = User.create(
                        email: "mailUser" + x.to_s+ "@gmail.com",
                        password: "123456789",
                        name: Faker::HarryPotter.character,
                        username: Faker::Internet.user_name,
                        password_confirmation: "123456789"
                        )
                    u.update(remote_image_url: im.to_s) 
                    up = UserPolymorphism.create(
                    user_id: u.id,
                        user_data_id: o.id,
                        user_data_type: "Voluntary")
                end
               

 


end


100.times do |x|
    
    s = Faker::LoremFlickr.image("400x300")
    uri = URI.parse(s)
    tries = 3
    im1 = nil
    begin
        uri.open(redirect: false)
        rescue OpenURI::HTTPRedirect => redirect
        uri = redirect.uri # assigned from the "Location" response header
        im1 =  uri
        retry if (tries -= 1) > 0
        raise
    end
    s = Faker::LoremFlickr.image("400x300")
    uri = URI.parse(s)
    tries = 3
    im2 = nil
    begin
        uri.open(redirect: false)
        rescue OpenURI::HTTPRedirect => redirect
        uri = redirect.uri # assigned from the "Location" response header
        im2 =  uri
        retry if (tries -= 1) > 0
        raise
    end


    e = Event.create(organization_id: (x%3)+1,
        name: Faker::Team.name,
        description: Faker::Lovecraft.fhtagn(2),
        duration: x*10+1,
        start_datetime: Faker::Number.between(1451624400000, 1577768400000),
        max_voluntaries: ((x*3)%10 )+ 5
        )
    e.update(remote_files_urls: [im1.to_s, im2.to_s])
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
    for i in 1..e.max_voluntaries do
        ev = EventVoluntary.create(voluntary_id: i,
            event_id: e.id,
            created_at: Faker::Date.between(2.years.ago, 2.days.ago) )
        if Random.new.rand(1..3) != 3 && e.start_datetime < (Time.now.to_i * 1000)
            ev.scorevoluntary = Random.new.rand(0..5)
            ev.scoreorganization = Random.new.rand(0..5)
            ev.commentsvoluntary = Faker::RickAndMorty.quote
            ev.commentsorganization = Faker::Simpsons.quote 
            ev.save
        end

    end        

end
Voluntary.all.each do |v|
    Voluntary.calculateScore(v.id)
end
Organization.all.each do |o|
    Organization.calculateScore(o.id)
end

20.times do
    s = Faker::LoremFlickr.image("400x300")
    uri = URI.parse(s)
    tries = 3
    im = nil
    begin
        uri.open(redirect: false)
        rescue OpenURI::HTTPRedirect => redirect
        uri = redirect.uri # assigned from the "Location" response header
        im =  uri
        retry if (tries -= 1) > 0
        raise
    end
    f = ForumThread.create(user_id: Random.new.rand(1..50),
                        event_id: Random.new.rand(1..100),
                        body: Faker::Lorem.paragraph_by_chars(1024, false),
                        title: Faker::SiliconValley.motto,
                        points: Random.new.rand(0..125),
                        created_at: Faker::Date.between(2.years.ago, 2.days.ago)
                        )
    f.update(remote_img_prev_url: im.to_s)
    Random.new.rand(0..12).times do
       fp= ForumPost.create(
            forum_thread_id: f.id,
            user_id: Random.new.rand(1..50),
            text: Faker::VForVendetta.quote,
            created_at: Faker::Date.between(f.created_at, Date.today)
        )
        Random.new.rand(0..5).times do
            r  = Random.new.rand(-1..1)
            Board.create(
                user_id: Random.new.rand(1..50),
                like: r == 0 ? -1 : r,
                forum_post_id: fp.id
            )
        end
    end       
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



