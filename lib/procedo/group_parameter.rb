require 'procedo/parameter'

module Procedo
  # Parameter group is a a group of parameter like a directory in a FS.
  class GroupParameter < Procedo::Parameter
    def initialize(procedure, name, options = {})
      super(procedure, name, options)
      @items = {}.with_indifferent_access
    end

    # Returns all items of the group
    # If +recursively+ is true, it will retrieve all parameters of sub-groups too.
    def items(recursively = false)
      recursively ? all_items : @items.values
    end

    # Returns an item with its name
    def fetch(name)
      @items[name]
    end
    alias_method :[], :fetch

    # Returns item with its name. Returns nil if not found
    def find(name, _type = nil)
      browse_all do |i|
        return i if i.name.to_s == name.to_s
      end
      nil
    end

    # Returns item with its name. Raise exception if item not found
    def find!(name)
      item = find(name)
      fail "Cannot find item: #{name.inspect}" unless item
      item
    end

    def position_of(item)
      index = 1
      browse_all do |i|
        return index if i == item
        index += 1
      end
      nil
    end

    def groups
      @items.select { |i| i.is_a?(Procedo::GroupParameter) }
    end

    # Browse items in their order
    def each_item(recursively = false, &block)
      items(recursively).each(&block)
    end

    def add_product_parameter(name, type, options = {})
      options[:group] = self
      item = Procedo::ProductParameter.new(@procedure, name, type, options)
      @items[item.name] = item
    end

    def add_group_parameter(name, options = {})
      options[:group] = self
      item = Procedo::GroupParameter.new(@procedure, name, options)
      @items[item.name] = item
    end

    protected

    def browse_all(&block)
      @items.each do |_k, item|
        yield item
        item.browse_all(&block) if item.is_a?(Procedo::GroupParameter)
      end
    end

    # Retrieve all (nested or not) Parameter objects in the group in the order
    # defined by default.
    def all_items
      list = []
      items.each do |item|
        if item.is_a?(Procedo::GroupParameter)
          list += item.all_items
        else
          list << item
        end
      end
      list
    end
  end
end