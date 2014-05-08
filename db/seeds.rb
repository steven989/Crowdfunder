# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(        
        email: "user1@crowdfunder.com",
        password: "12345",
        password_confirmation: "12345"
)

User.create(        
        email: "user2@crowdfunder.com",
        password: "12345",
        password_confirmation: "12345"
)

Category.create(
        name: "Charity"
)

Category.create(
        name: "Technology"
)

################ FEED THE HOMELESS

Project.create(

        title: "Feed the homeless",
        description: "We want to feed and cloth all the homeless people in Toronto",
        start_date: "2014-05-10",
        end_date: "2014-06-01",
        goal: 1000000,
        raised: 0,
        user_id: 1,
        category_id: 1
)

Tier.create(
        project_id: 1,
        amount: 1,
        rewards: "No reward."
)

Tier.create(
        project_id: 1,
        amount: 10,
        rewards: "You get a virtual hug!"
)

Tier.create(
        project_id: 1,
        amount: 100,
        rewards: "You get a hug from a homeless person of your choosing!"
)

Tier.create(
        project_id: 1,
        amount: 2000,
        rewards: "You get a limited edition hug from the homeless person you helped with lots of love :)"
)

Pledge.create(
        tier_id: 1,
        user_id: 1,
        project_id: 1
)

Pledge.create(
        tier_id: 2,
        user_id: 1,
        project_id: 1
)

################ FEED THE CATS

Project.create(

        title: "Feed the cats",
        description: "We want to feed and cloth all the cats in Toronto",
        start_date: "2014-05-15",
        end_date: "2014-06-09",
        goal: 2000000,
        raised: 0,
        user_id: 2,
        category_id: 1

        )

Tier.create(
        project_id: 2,
        amount: 1,
        rewards: "No reward."
)

Tier.create(
        project_id: 2,
        amount: 15,
        rewards: "You will receive a photo of a random cat."
)

Tier.create(
        project_id: 2,
        amount: 150,
        rewards: "Receive a photo of a group of cats."
)

Tier.create(
        project_id: 2,
        amount: 5000,
        rewards: "You will receive an authentic signed photo of the original grumpy cat!"
)

################ FEED THE RACOONS

Project.create(

        title: "Feed the racoons",
        description: "We want to feed and cloth all the racoons in Toronto",
        start_date: "2014-05-21",
        end_date: "2014-06-21",
        goal: 3000000,
        raised: 0,
        user_id: 1,
        category_id: 1

        )

Tier.create(
        project_id: 3,
        amount: 1,
        rewards: "Racoons won't go through your garbage for one night only."
)

Tier.create(
        project_id: 3,
        amount: 100,
        rewards: "Racoons will keep their offsprings away from your area."
)

Tier.create(
        project_id: 3,
        amount: 100000,
        rewards: "Racoons will leave you alone FOR LIFE!"
)

################ FLY TO SPACE

Project.create(

        title: "Fly to space",
        description: "We want to build a spaceship to boldly go where no man has gone before",
        start_date: "2014-06-21",
        end_date: "2015-06-21",
        goal: 3000000000,
        raised: 0,
        user_id: 1,
        category_id: 2

        )

Tier.create(
        project_id: 4,
        amount: 100,
        rewards: "You get a signed autograph from one of our astronauts."
)

Tier.create(
        project_id: 4,
        amount: 1000000,
        rewards: "You and a friend will travel with us to space."
)

Pledge.create(
        tier_id: 2,
        user_id: 1,
        project_id: 4
)
