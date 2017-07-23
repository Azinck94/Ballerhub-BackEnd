class BallerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :team, :position, :buckets, :rpg, :apg, :sponsors, :shoes, :catchphrase
end
