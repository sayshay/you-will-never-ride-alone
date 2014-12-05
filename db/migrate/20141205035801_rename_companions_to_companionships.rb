class RenameCompanionsToCompanionships < ActiveRecord::Migration
  def change
    rename_table :companions, :compnaionships
  end
end
