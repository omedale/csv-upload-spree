module Spree
  class FileUploadBase
    def initialize(path, class_name)
      @path = path
      @class_name = class_name
    end
  end
end