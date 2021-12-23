# frozen_string_literal: true

class Proxy
  attr_reader :messages, :proxy_object

  def initialize(proxy_object)
    @messages = []
    @proxy_object = proxy_object
  end

  def method_missing(method, *args, &block)
    proxy_object.send(method, *args, &block)
    messages << method
  end

  def respond_to?(method)
    proxy_object.respond_to?(method) ||
      internally_defined_method?(method)
  end

  def called?(proxied_method)
    messages.include?(proxied_method)
  end

  private

  def internally_defined_method?(method)
    method == :called?
  end
end
