# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  Categoria       :string
#  category2       :string
#  unity           :text
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
#  brand           :string
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
    
    
    def self.to_csv(options = {})
        CSV.generate(options) do |csv|
          csv << column_names
          all.each do |product|
              csv << product.attributes.values_at(*column_names)
          end
      end
        
    end
    
    def self.import(file)
        
        CSV.foreach(file.path, headers: true, :encoding => "Windows-1251", :col_sep => ";") do |row|
          Product.create! row.to_hash
        end
    end
    
    def self.open_spreeadsheet(file)
      case File.extname(file.original_filename)
        when ".csv" then CSV.new(file.path, headers: true, :encoding => "Windows-1251", :col_sep => ";")
        else raise "Extenção desconhecida para: #{file.original_filename}"
      end
    end
    
end
