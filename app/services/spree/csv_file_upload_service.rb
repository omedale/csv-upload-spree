module Spree
  class CsvFileUploadService < FileUploadBase
    require 'csv'
    
    def upload
      @class_name.transaction do
        CSV.foreach(@path, headers: true) do |row|
          object = @class_name.build_upload_object(row)
          object.save 
        end
      end
    end
  end
end