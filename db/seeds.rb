# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create(

        title: "Feed the homeless",
        description: "We want to feed and cloth all the homeless people in Toronto",
        start_date: "2014-05-10",
        end_date: "2014-06-01",
        goal: 1000000,
        raised: 0

)


Project.create(

        title: "Feed the cats",
        description: "We want to feed and cloth all the cats in Toronto",
        start_date: "2014-05-15",
        end_date: "2014-06-09",
        goal: 2000000,
        raised: 0

)



Project.create(

        title: "Feed the racoons",
        description: "We want to feed and cloth all the racoons in Toronto",
        start_date: "2014-05-21",
        end_date: "2014-06-21",
        goal: 3000000,
        raised: 0

)