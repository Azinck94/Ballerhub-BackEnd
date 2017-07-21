class BallerSerializer < ActiveModel::Serializer
attributes :first_name, :last_name, :team, :position, :buckets, :rpg, :apg, :sponsors, :shoes
end
