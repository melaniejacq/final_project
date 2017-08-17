class CreateRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :requirements do |t|
      t.integer :job_id
      t.integer :skill_id
      t.text :use_case

      t.timestamps

    end
  end
end
