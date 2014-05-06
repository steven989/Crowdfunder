class Project < ActiveRecord::Base
    
    has_many :tiers
    has_many :pledges, through: :tiers
    # belongs_to :user

    accepts_nested_attributes_for :tiers, :reject_if => :all_blank, :allow_destroy => true

end
