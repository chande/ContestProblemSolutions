ARGV.each do |file|
  File.open(file, 'r').each_line do |line|
    line.strip!
    if (line.length > 1)
        input = line
        output = ""

        midIndex = (input.length) / 2
        begIndex = 0

        while midIndex != input.length
          if (input[midIndex] == input[begIndex])
            midIndex += 1
            begIndex += 1
          else
            begIndex += 1
          end
        end

        while output.length < 8
          output += input[begIndex..(input.length - 1)]
        end
        puts output[0..7] + "..."
      end
  end
end