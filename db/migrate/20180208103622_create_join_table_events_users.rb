class CreateJoinTableEventsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :events, :users do |t|
      # t.index [:event_id, :user_id]
      # t.index [:user_id, :event_id]
    end
  end
end

# rails g migration create_join_table_events_users event user
# rails db:migrate


