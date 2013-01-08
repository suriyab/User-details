class Samples < ActiveRecord::Migration
  def up
    add_column :samples, :religion, :string
  end

  def down
  end
end
