# == Schema Information
# Schema version: 20080819191919
#
# Table name: account_balances
#
#  id               :integer       not null, primary key
#  account_id       :integer       not null
#  financialyear_id :integer       not null
#  global_debit     :decimal(16, 2 default(0.0), not null
#  global_credit    :decimal(16, 2 default(0.0), not null
#  global_balance   :decimal(16, 2 default(0.0), not null
#  global_count     :integer       default(0), not null
#  local_debit      :decimal(16, 2 default(0.0), not null
#  local_credit     :decimal(16, 2 default(0.0), not null
#  local_balance    :decimal(16, 2 default(0.0), not null
#  local_count      :integer       default(0), not null
#  company_id       :integer       not null
#  created_at       :datetime      not null
#  updated_at       :datetime      not null
#  created_by       :integer       
#  updated_by       :integer       
#  lock_version     :integer       default(0), not null
#

class AccountBalance < ActiveRecord::Base

end
