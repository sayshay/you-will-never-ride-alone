class RenameCompanionsToCompanionships < ActiveRecord::Migration
  def change
    rename_table :companions, :companionships
  end
end
