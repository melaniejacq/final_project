class CreateFeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :features do |t|
      t.integer :job_id
      t.integer :attribute_id
      t.text :description

      t.timestamps

    end
  end
end
