class AddClientStatusToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :client_status, :integer
  end
end
