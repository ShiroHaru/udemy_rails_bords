class SetNullComment < ActiveRecord::Migration[5.2]
  def change
    change_column_null :comments, :name, false, 0
  end
end