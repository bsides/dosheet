class Game < ActiveRecord::Base
  belongs_to :system
  has_many :groups
end
