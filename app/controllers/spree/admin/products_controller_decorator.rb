Spree::Admin::ProductsController.class_eval do

  def bulk_product_upload
    response = if params[:file].try(:content_type) == "text/csv"
      Spree::ProductBulkUploadWorker.perform_async(params[:file].path)
      {notice: "File uploaded successfully!!! The products will be proccessed and added to your product list"}
    else
      {alert: "Invalid CSV File"}
    end
    redirect_to admin_products_url, flash: response
  end
end
