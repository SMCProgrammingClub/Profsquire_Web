require 'csv'
namespace :importgd do

  desc "Import tech from csv file"

  task data: :environment do

    file = "smcgd.csv"

    CSV.foreach(file, :headers => true) do |row|
      Course.create ({
                           :department => row[0],
                           :subject => row[1],
                           :course => row[2],
                           :section => row[3],
                           :professor_id => row[4],
                           :a => row[5],
                           :b  => row[6],
                           :c => row[7],
                           :d  => row[8],
                           :f => row[9],
                           :w => row[10],
                           :total => row[11],
                           :semester => row[12],
                           :year => row[13]
                       })
    end
  end
end
######### The run command is: rake importgd:data