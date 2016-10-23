
namespace :import do

  task :reservations => :environment do
    csv_text = File.read("lib/reservations_test.csv")
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Reservation.create!(row.to_hash)
    end
  end
end
