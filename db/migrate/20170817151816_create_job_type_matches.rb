class CreateJobTypeMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :job_type_matches do |t|
      t.integer :candidate_id
      t.integer :job_type_id

      t.timestamps

    end
  end
end
