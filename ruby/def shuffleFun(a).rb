def shuffleFun(a)
  starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  i=0
  b=a.shuffle
  puts "Array lenth = #{b.length}"
  until a == b
    i+=1  
    b.shuffle!
  end
  puts "iterations = #{i}"
  ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  elapsed = ending - starting
  puts "elapsed time = #{elapsed}"
end
