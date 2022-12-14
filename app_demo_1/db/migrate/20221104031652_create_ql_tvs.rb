class CreateQlTvs < ActiveRecord::Migration[7.0]
  def change
    create_table :ql_tvs do |t|
      t.integer :stt
      t.string :maHS
      t.string :name
      t.string :lop
      t.string :maSach
      t.string :tenSach
      t.string :tenTG
      t.string :tuSach
      t.string :soBM
      t.date :ngayMuon
      t.date :ngayTra
      t.integer :soNgay

      t.timestamps
    end
  end
end
