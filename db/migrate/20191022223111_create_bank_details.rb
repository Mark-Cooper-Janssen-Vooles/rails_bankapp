class CreateBankDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_details do |t|
      t.string :bsb
      t.string :account_number

      t.timestamps
    end
  end
end
