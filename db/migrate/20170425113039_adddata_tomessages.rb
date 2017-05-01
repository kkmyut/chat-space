class AdddataTomessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :user
    add_reference :messages, :group
    add_reference :user_groups, :user
    add_reference :user_groups, :group
  end
end
