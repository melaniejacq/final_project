class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :company_id
      t.string :location
      t.integer :job_type_id

      t.timestamps

    end
  end
end
