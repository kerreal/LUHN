def recursive_fib(seq)
  if seq <= 2
    return 1
  else
    fib(seq - 1) + fib(seq - 2)
  end
end

def iterative_fib(seq)
  fibin = [0,1]
  #puts fibin.length
  while seq >= fibin.length
    fibin.push(fibin[fibin.length - 1] + fibin[fibin.length - 2])
    #puts fibin.last
    #puts fibin.length
  end

  return fibin[seq]
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end