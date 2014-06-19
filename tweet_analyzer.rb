while true
  # greet the user
  puts "Hello! Welcome to Tweet Analyzer!"

  # ask the user for 3 tweets
  puts "Please enter 3 tweets:"

  # collect 3 tweets
  tweets = []
  3.times do
    tweet = gets.strip
    tweets << tweet
  end

  # collect the words from all the tweets
  tweets = tweets.map do |tweet|
    tweet.split
  end

  tweets = tweets.flatten

  puts "TWEETS IS NOW: #{tweets}"

  # figure out the counts for the words
  counts = {}
  tweets.each do |word|
    if counts[word]
      counts[word] += 1
    else
      # adding a new key/value to the hash
      counts[word] = 1
    end
  end

  puts "COUNTS IS: #{counts}"

  # calculate the word with highest count
  highest_count = 0
  popular_word = nil

  counts.each do |word, count|
    if count > highest_count
      highest_count = count
      popular_word = word
    end
  end

  # print the most popular word
  puts "MOST POPULAR WORD IS: #{popular_word}"

  # ask if they want to continue?
  puts "Would you like to continue? (Y or Yes)"
  input = gets.strip

  break unless (input == "Y" || input == "Yes")
end