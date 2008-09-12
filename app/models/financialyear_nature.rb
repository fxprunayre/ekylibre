# == Schema Information
# Schema version: 20080819191919
#
# Table name: financialyear_natures
#
#  id           :integer       not null, primary key
#  name         :string(255)   not null
#  code         :string(2)     not null
#  fiscal       :boolean       not null
#  month_number :integer       default(12), not null
#  company_id   :integer       not null
#  created_at   :datetime      not null
#  updated_at   :datetime      not null
#  created_by   :integer       
#  updated_by   :integer       
#  lock_version :integer       default(0), not null
#

class FinancialyearNature < ActiveRecord::Base
end
