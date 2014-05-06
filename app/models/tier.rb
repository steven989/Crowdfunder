class Tier < ActiveRecord::Base

    belongs_to :project
    has_many :pledges
    # has_many :users, through: :pledges

end
