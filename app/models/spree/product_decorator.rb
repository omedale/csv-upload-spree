Spree::Product.class_eval do
  def self.build_upload_object(row)
    self.new({
      name: row[0], 
      sku: row[1],
      prototype_id: row[2],
      price: row[3],
      available_on: row[4],
      shipping_category_id: row[5]
    })
  end
end