require 'csv'
namespace :import do

  desc "Import tech from csv file"

  task data: :environment do

    file = "professors2.csv"

    CSV.foreach(file, :headers => false) do |row|
      Professor.create ({
                           :name => row[0]
                       })
    end
  end
end

######### The run command is: rake import:data
######## If you get the UTF-8 error, open the .xls in Numbers on mac, delete extra columns, and export again as csv
####### There will be no commas in an editor, that is fine and it works.
###### If there is a header column change :headers to true
##### If you delete data from sqlite and need to reset the :id increment, open in sql browser, go to execute and type both commands replacing professors with whatever table name.
####                    DELETE FROM professors;
####                    DELETE FROM sqlite_sequence WHERE name = 'professors';