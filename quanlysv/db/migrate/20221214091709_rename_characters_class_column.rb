class RenameCharactersClassColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :ql_tvs, :class, :stu_class
  end
end
