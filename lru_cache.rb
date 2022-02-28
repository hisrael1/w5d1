class LRUCache

    attr_accessor :size, :cache

    def initialize(size)
        @size = size
        @cache = []
    end

    def count
        cache.size
    end

    def add(el)
        if count >= 4
            if @cache.include?(el)
                @cache.delete(el)
            else
                @cache.shift 
            end
        end
        @cache << el
    end

    def show
        @cache
    end

    # private
    

end

p johnny_cache = LRUCache.new(4)

p  johnny_cache.add("I walk the line")
p   johnny_cache.add(5)

p   johnny_cache.count # => returns 2

p johnny_cache.add([1,2,3])
p johnny_cache.add(5)
p johnny_cache.add(-5)
p johnny_cache.add({a: 1, b: 2, c: 3})
p johnny_cache.add([1,2,3,4])
p johnny_cache.add("I walk the line")
p johnny_cache.add(:ring_of_fire)
p johnny_cache.add("I walk the line")
p johnny_cache.add({a: 1, b: 2, c: 3})


p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]