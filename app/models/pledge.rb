class Pledge < ActiveRecord::Base

    belongs_to :tier
    belongs_to :user

end
