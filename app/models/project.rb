class Project < ActiveRecord::Base
    
    has_many :tiers
    has_many :pledges, through: :tiers
    # belongs_to :user

end
