class Sport < ApplicationRecord
  has_many :tournaments, dependent: :destroy

  validates_presence_of :name

  SOCCER = "Fútbol"
  INDOOR_FOOTBALL = "Fútbol Sala"
  BASKETBALL = "Básquetbol"
  VOLLEYBALL = "Vóleibol"
  BASEBALL = "Béisbol"
  PING_PONG = "Ping Pong"

  SPORTS = [
    SOCCER,
    INDOOR_FOOTBALL,
    BASKETBALL,
    VOLLEYBALL,
    BASEBALL,
    PING_PONG
  ]
end
