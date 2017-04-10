class DropInstall < ActiveRecord::Migration[5.0]
  def change
    drop_table :installs
  end
end
