class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.integer :candidate_id
      t.integer :attribute_id

      t.timestamps

    end
  end
end
