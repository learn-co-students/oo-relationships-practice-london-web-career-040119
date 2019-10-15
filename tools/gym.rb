require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

trainers = []
clients = []
locations = []

(1..5).each do |idx|
  trainers << Trainer.new("Trainer #{idx}")
  locations << Location.new("Location #{idx}")
end

(1..18).each do |idx|
  clients << Client.new("Client #{idx}")
  clients.last.assign_trainer(trainers[idx % 4])
end

e1 = Employment.new(trainers[0], locations[0])
e2 = Employment.new(trainers[0], locations[1])
e3 = Employment.new(trainers[1], locations[1])
e4 = Employment.new(trainers[2], locations[2])
e5 = Employment.new(trainers[2], locations[3])
e6 = Employment.new(trainers[1], locations[4])

Pry.start
