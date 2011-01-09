class MandatoryFormBuilder < ActionView::Helpers::FormBuilder

  def label(method, text = nil, options = {}, &block)
    
    unless @object.class.validators_on(method).empty?
      if options[:class].nil?
        options[:class] = "mandatory"
      else
        options[:class] << " mandatory"
      end
    end
    
    @template.label(@object_name, method, text, objectify_options(options), &block)
  end
  
end