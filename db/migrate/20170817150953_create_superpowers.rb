class CreateSuperpowers < ActiveRecord::Migration[5.0]
  def change
    create_table :superpowers do |t|
      t.integer :candidate_id
      t.integer :skill_id
      t.text :story

      t.timestamps

    end
  end
end
