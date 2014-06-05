class List < ActiveRecord::Base
  belongs_to :system
  has_many :list_values
end
