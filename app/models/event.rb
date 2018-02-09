class Event < ApplicationRecord

belongs_to :creator, :foreign_key => "creator_id", :class_name => "User"
has_and_belongs_to_many :attendees, :class_name => "User"

end

=begin 

User.created_events ex: User.first.created_events ou User.find(2).created.events

Event.create sans creator_id ne fonctionne pas car impossible d'enregistrer un event sans creator (user) car belongs_to

Penser à assigner une variable:
x = Event.new
x.creator = User ex: User.first ou User.find(2)
x.attendees = [...] => ecrase l'ancien array
il est conseillé de pusher ainsi x.attendees << User.first ou User.all ...

=end


