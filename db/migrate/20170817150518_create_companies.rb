class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo
      t.string :hq_address
      t.integer :industry_id

      t.timestamps

    end
  end
end
