class RemoveTokenFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column(:users, :authentication_token, :string, {:limit=>30})
  end
end
