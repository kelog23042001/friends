class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :twitter
      # t.string :stt
      # t.string :maHS
      # t.string :tenHS
      # t.string :maSach
      # t.string :tenSach
      # t.string :tenSach

      t.timestamps
    end
  end
end
