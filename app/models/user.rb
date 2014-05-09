class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :projects
  has_many :pledges
  has_many :comments, :as => :commentable

  validates :password, confirmation: true
  validates :password_confirmation, presence: true


  def total_spent

    self.pledges.inject(0) {|sum,pledge| sum += pledge.tier.amount; sum}

  end 

end
