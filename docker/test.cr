require "./docker"

Docker.on_int do
  puts "Okthxbye!"
  exit
end

loop do
  puts "Hi!"
  sleep 1
end
