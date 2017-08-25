class AddDescriptionToJobTypes < ActiveRecord::Migration[5.1]
  def change
    
      add_column :job_types, :description, :text
  
  end
end
