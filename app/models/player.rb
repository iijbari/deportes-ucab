class Player < ApplicationRecord
  belongs_to :school
  belongs_to :period
  belongs_to :user

  has_one :phone, dependent: :destroy
  has_many :t_shirts, inverse_of: :player, dependent: :destroy
  has_many :player_teams, dependent: :destroy
  has_many :teams, through: :player_teams

  accepts_nested_attributes_for :phone, allow_destroy: true
  accepts_nested_attributes_for :t_shirts, allow_destroy: true

  validates_presence_of :id_card, :first_name, :last_name, :school_id, :period_id

  def name
    "#{first_name} #{last_name}"
  end
end
