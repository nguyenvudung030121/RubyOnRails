class CreateQlTvs < ActiveRecord::Migration[7.0]
  def change
    create_table :ql_tvs do |t|
      t.string :masv
      t.string :name
      t.string :stu_class
      t.string :addr
      t.float :points

      t.timestamps
    end
  end
end
