module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for item in self
      yield(item, index)
      index+=1
    end
  end

  def my_select
    selected = []
    self.each do |item|
      if yield item
        selected.push(item)
      end
    end
    selected
  end

  def my_all?
    selected = []
    self.each do |item|
      if yield item
        selected.push(item)
      end
    end
    selected == self
  end

  def my_any?
    selected = []
    self.each do |item|
      if yield item
        selected.push(item)
      end
    end
    selected.length > 0
  end

  def my_none?
    selected = []
    self.each do |item|
      if yield item
        selected.push(item)
      end
    end
    selected.length == 0
  end

  def my_count
    return self.length unless block_given?
    selected = []
    self.each do |item|
      if yield item
        selected.push(item)
      end
    end
    selected.length
  end

  def my_map
    arr = []
    for item in self
      arr.push(yield(item))
    end
    arr
  end

  def my_inject(result = 0)
    arr = []
    index = 0
    for item in self
      result = yield(result, item)
    end
    result
  end
end


# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    for item in self
      yield(item)
    end
  end
end
