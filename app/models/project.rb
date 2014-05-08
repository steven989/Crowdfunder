class Project < ActiveRecord::Base
    
    has_many :tiers
    has_many :pledges, through: :tiers
    belongs_to :user

    accepts_nested_attributes_for :tiers, :reject_if => :all_blank, :allow_destroy => true

    def self.total_amount(id)
      @project = Project.find(id)

      sum = 0
      @project.tiers.each do |tier|
        sum += tier.amount * tier.pledges.length
      end

      return sum

    end

end
