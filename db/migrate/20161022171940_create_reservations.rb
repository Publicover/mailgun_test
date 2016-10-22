class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :f_name
      t.string :l_name

      t.timestamps
    end
  end
end
