class AddUserToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :creator, foreign_key: true
  end
end

# rails g migration add_creator_to_created_events creator:references
# rails db:migrate


