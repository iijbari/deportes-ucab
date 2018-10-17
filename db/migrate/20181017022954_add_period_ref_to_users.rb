class AddPeriodRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :period, foreign_key: true
  end
end
