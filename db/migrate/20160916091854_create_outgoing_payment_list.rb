class CreateOutgoingPaymentList < ActiveRecord::Migration
  def change
    create_table :outgoing_payment_lists, &:timestamps

    change_table :outgoing_payments do |t|
      t.integer :list_id, index: true
    end
  end
end
