# Write your code here.

def dictionary(word)

  result = word

  dict = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }

  if dict.key?(word.downcase)
    result = dict[word.downcase]
  end

  result

end

def word_substituter(tweet)
  tweet.split.collect { |word| dictionary(word) }.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end

end

def shortened_tweet_truncator(tweet)
  ellipsis = " ..."
  short = selective_tweet_shortener(tweet)
  if short.size > 140
    short[0..135] + ellipsis
  else
    short
  end
end
