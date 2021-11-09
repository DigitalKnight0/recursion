def merge_sort(arr)
    return arr if arr.length < 2

    mid = arr.length/2
    
    merge(merge_sort(arr[0..(mid-1)]),merge_sort(arr[mid..arr.length]))

end

def merge(left,right)
    sorted = []
    count = 0
    until (left.empty? && right.empty?)
     if left.empty?
        sorted << right.shift
     elsif right.empty?
        sorted << left.shift
     elsif left[0] >= right[0]
        sorted[count] = right.shift
     elsif right[0] >= left[0]
        sorted[count] = left.shift
     end
     count += 1
    end
     return sorted
end

p merge_sort([1,4,2,3,6,7,5,9,1])