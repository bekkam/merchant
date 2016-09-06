class EditColumns < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.remove :provider ,:uid, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :password
      t.string :password_digest

    end
  end
end
