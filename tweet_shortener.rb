require  'pry'

def dictionary
substitutes = {
  "hello" => "hi",
  "to" => "2",
  "two" =>"2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
  short_array = tweet.split.map { |word| dictionary.keys.include?(word.downcase) ? dictionary[word.downcase] : word }
  short_array.join(' ')
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet[0..139] : tweet
end
