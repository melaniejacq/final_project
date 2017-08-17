class CreateIndustryPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :industry_preferences do |t|
      t.integer :candidate_id
      t.integer :industry_id
      t.string :classification

      t.timestamps

    end
  end
end
