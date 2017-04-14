['Боинг 737', 'Боинг 747', 'Ту-154', 'A300', 'Ту-144', 'A320', 'А380'].each do |name|
  Airtype.create(name: name, takeoff_time: rand(10..20))
end
