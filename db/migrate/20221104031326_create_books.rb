class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :maHS
      t.string :tenHS
      t.string :maSach
      t.string :tenSach
      t.string :tuSach
      t.datetime :ngayMuon
      t.datetime :ngayTra

      t.timestamps
    end
  end
end
