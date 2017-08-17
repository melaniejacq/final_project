class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.integer :candidate_id
      t.integer :job_id

      t.timestamps

    end
  end
end
