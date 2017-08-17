namespace :slurp do
  desc "TODO"

  task industry_data: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "industry_data.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Industry.new
    
      t.name = row["Industry"]

      t.save
      puts "#{t.name} saved"
    end
    
    puts "There are now #{Industry.count} rows in the industry table"
  end
  
  task skills_data: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "skills_data.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Skill.new
    
      t.name = row["Name"]
      t.description = row["Description"]
    
      t.save
      puts "#{t.name} saved"
    end
    
    puts "There are now #{Skill.count} rows in the skill table"
  end

  task attribute_data: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "attribute_data.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Attribute.new
    
      t.name = row["Attribute"]
      t.description = row["Description"]
      
      t.save
      puts "#{t.name} saved"
    end
    
    puts "There are now #{Attribute.count} rows in the attribute table"
  end

# Dummy code
  task something_dat: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "something_data.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Something.new
      
      #t [name of column in model] = row["Name of column in CSV file"] 
      t.something = row["Something"]
    
      t.save
      puts "#{t.something} saved"
    end
    
    puts "There are now #{Something.count} rows in the table"
  end



end
