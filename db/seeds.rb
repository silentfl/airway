['Боинг 737', 'Боинг 747', 'Ту-154', 'A300', 'Ту-144', 'A320', 'А380'].each do |name|
  Airtype.create(name: name, takeoff_time: rand(10..20))
end

airtypes = Airtype.all.to_a

20.times do
  Aircraft.create(
    airtype: airtypes.sample,
    number: "#{('A'..'Z').to_a.sample}#{rand(100).to_s.rjust(2, '0')}",
    status: :on_base
  )
end
