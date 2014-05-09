class Project < ActiveRecord::Base
    
    has_many :tiers
    has_many :pledges, through: :tiers
    belongs_to :user
    belongs_to :category
    has_many :comments, :as => :commentable

    accepts_nested_attributes_for :tiers, :reject_if => :all_blank, :allow_destroy => true

    acts_as_taggable

    def self.total_amount(id)
      @project = Project.find(id)

      sum = 0
      @project.tiers.each do |tier|
        sum += tier.amount * tier.pledges.length
      end

      return sum

    end

end
