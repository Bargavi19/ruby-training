# frozen_string_literal: true

class Proxy
  attr_reader :messages

  def initialize( proxy_object )
    @proxy_object = proxy_object
    @messages = []
  end

  def method_missing(method_name, *args, &block)
    if @proxy_object.respond_to?(method_name)
      messages.push(method_name)
      @proxy_object.send(method_name, *args, &block)
    else
      super(method_name, *args, &block)
    end
  end

  def respond_to?(method_name, include_private = false)
    proxy_method_names = @proxy_object.methods - Object.methods
    if proxy_method_names.include?(method_name)
      true
    else
      super(method_name, include_private)
    end
  end

  def called?(method_name)
    messages.include?(method_name)
  end

  def number_of_times_called(method_name)
    if called?(method_name)
      messages.count(method_name)
    else
      0
    end
  end

end

