module Spree
  class ProductBulkUploadWorker
    include Sidekiq::Worker
    sidekiq_options retry: false

    def perform(csv_file)
      Spree::FileUploadService.new(csv_file, Spree::CsvFileUploadService, Spree::Product).upload
    end
  end
end