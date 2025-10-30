class Module
  def aliased_methods
    instance_methods
      .group_by { |m| instance_method(m) }
      .map(&:last)
      .select! { |symbols| symbols.size > 1 }
  end
end

pp (Array.aliased_methods + Hash.aliased_methods + Enumerable.aliased_methods).uniq.sort
# pp (String.aliased_methods + Object.aliased_methods + BasicObject.aliased_methods).uniq.sort

# pp String.aliased_methods.sort
