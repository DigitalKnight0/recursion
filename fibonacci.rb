def fibs(num)
    arr = [0,1]
    return [] if num == 0
    return [0] if num == 1
    return arr if num == 2

    for i in 3..num
        arr << (arr[-1] + arr[-2])
        
    end
    arr
end

def fib_rec(num)
   
    return [0,1] if num == 1
    arr = fib_rec(num-1)
    arr << arr[-1] + arr[-2]
    arr
end

p fib_rec(10)