class CreateBorrowbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :borrowbooks do |t|
      t.string :maHS
      t.string :tenHS
      t.string :maSach
      t.string :tenSach
      t.string :tuSach
      t.string :ngayMuon
      t.string :ngayTra

      t.timestamps
    end
  end
end
