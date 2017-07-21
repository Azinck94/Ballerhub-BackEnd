class BallerSerializer < ActiveModel::Serializer
attributes :first_name, :last_name, :team, :position, :buckets, :rb_per_game, :asst_per_game, :sponsors, :shoes
end
