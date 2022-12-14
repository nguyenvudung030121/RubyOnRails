class RemovePrimaryKeyFromtvTvs < ActiveRecord::Migration[7.0]
  def change
    remove_column :ql_tvs, :primary_key, :string
  end
end
