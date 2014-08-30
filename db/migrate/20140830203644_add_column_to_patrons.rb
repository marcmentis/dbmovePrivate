class AddColumnToPatrons < ActiveRecord::Migration
  def change
  	add_column :patrons, :comment, :text
  end
end
