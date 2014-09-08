class StopsAddKeys < ActiveRecord::Migration
  def change
    remove_column :stops, :name
    add_column :stops, :station_id, :integer
    add_column :stops, :line_id, :integer

  end
end
