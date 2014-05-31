class Group < ActiveRecord::Base
  belongs_to :game
  has_and_belongs_to_many :powers
  accepts_nested_attributes_for :powers
end
