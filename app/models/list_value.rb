class ListValue < ActiveRecord::Base
  belongs_to :list
  belongs_to :system
end
