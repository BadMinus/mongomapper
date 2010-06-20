module MongoMapper
  module Plugins
    module ActiveModel
      def self.configure(model)
        model.class_eval do
          include ActiveModel::Serializers::Xml
          include ActiveModel::Conversion
          include ActiveModel::Naming
          include ActiveModel::Serialization
          include ActiveModel::Serializers::JSON
          model.extend ActiveModel::Translation  if defined?(ActiveModel)
        end
      end
    end
  end
end