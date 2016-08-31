# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  category1       :string
#  category2       :string
#  description     :text
#  indentification :integer
#  cost            :decimal(, )
#  sale_price1     :decimal(, )
#  observation     :text
#  provider        :integer
#  stock           :integer
#  bar_code        :integer
#  sale_price2     :decimal(, )
#  sale_price3     :decimal(, )
#  minimum_stock   :integer
#  max_stock       :integer
#  stock_purchase  :integer
#  sale_unit       :integer
#  ncm             :integer
#  weight          :decimal(, )
#  size            :decimal(, )
#  inactive        :integer
#  product_type    :integer
#  category3       :string
#  category4       :string
#  composition     :integer
#  feedstock       :integer
#  exp_material    :integer
#  to_sale         :integer
#  currency        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_products_on_bar_code  (bar_code)
#  index_products_on_provider  (provider)
#

class Product < ActiveRecord::Base
end
