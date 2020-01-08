module Spree
  class FileUploadService
    def initialize(path, upload_class, class_name)
      @path = path
      @class_name = class_name
      @upload_service = upload_class.new(@path, @class_name)
    end
    
    def upload
      @upload_service.upload
    end
  end
end