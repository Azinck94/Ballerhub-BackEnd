# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :ballers, through: :teams
  has_many :teams
end
