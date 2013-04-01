module Hospice
  class Category
    include Support::Storer

    attr_reader :name

    def id
      object_id
    end

    def initialize(name)
      @name = name
      store :name
    end

    def packages
      Package.all.select{ |p| p.category == name }
    end
  end
end