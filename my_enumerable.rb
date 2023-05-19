module MyEnumerable
  def initialize(*args)
    @list = [*args]
  end

  def to_s
    @list.to_s
  end

  def all?
    @list.each do |element|
      return false unless yield(element)
    end
    true
  end

  def any?
    @list.each do |element|
      return true if yield(element)
    end
    false
  end

  def filter
    arr = []
    @list.each do |element|
      arr << element if yield(element)
    end
    arr
  end
end
