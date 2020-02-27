class Array
    def merge_sort
        return self.dup if length <= 1

        mid = length / 2

        left = self[0...mid]
        right = self[mid..-1]

        Array.merge(left.merge_sort, right.merge_sort)
    end

    def self.merge(left, right)
        merged = []

        until left.empty? || right.empty?
            if left.first < right.first
                left_ele = left.shift
                merged << left_ele 
            else  
                right_ele = right.shift
                merged << right_ele
            end
        end

        merged + left + right
    end
end
