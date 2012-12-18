class AddSaldoToPerson < ActiveRecord::Migration
  def change
    add_column :people, :saldo, :decimal, precision: 15, scale: 2
  end
end
