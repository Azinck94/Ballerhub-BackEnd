class Team < ApplicationRecord
  belongs_to :user, inverse_of: :teams
  belongs_to :player, inverse_of: :teams

  validates_uniqueness_of :user_id, scope: :baller_id
end
