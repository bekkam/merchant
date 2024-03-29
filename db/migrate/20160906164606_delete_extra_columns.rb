class DeleteExtraColumns < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
        t.remove :encrypted_password, :reset_password_token, :reset_password_sent_at, :sign_in_count, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email
    end
  end
end
