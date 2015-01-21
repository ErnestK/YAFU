class AddUserRefToScrub < ActiveRecord::Migration
  def change
    add_reference :scrubs, :user, index: true
  end
end
