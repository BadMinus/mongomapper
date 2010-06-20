module MongoMapper
  module Plugins
    module Validations
      def self.configure(model)
        model.class_eval do
          include ActiveModel::Serializers::Xml
          include ActiveModel::Conversion
          include ActiveModel::Naming
          include ActiveModel::Serialization
          include ActiveModel::Serializers::JSON
          extend ActiveModel::Translation
        end
      end
    end
  end
end