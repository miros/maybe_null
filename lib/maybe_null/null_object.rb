# -*- encoding : utf-8 -*-

# Null object [http://en.wikipedia.org/wiki/Null_Object_pattern]
class NullObject

  # @return [NullObject]
  def method_missing(*args, &block)
    self
  end

  def respond_to?(*args)
    true
  end

  def nil?
    true
  end

  def blank?
    true
  end

  def present?
    false
  end

  # @return [NilClass]
  def presence
    nil
  end

  # @return [Array]
  def to_a; [] end

  # @return [String]
  def to_s; "" end

  # @return [Float]
  def to_f; 0.0 end

  # @return [Integer]
  def to_i; 0 end

  # @return [Integer]
  def to_int; 0 end

  # @return [Boolean]
  def to_boolean; false end

  # @return [Hash]
  def to_hash; {} end

  def ==(other)
    other.is_a?(self.class)
  end

end