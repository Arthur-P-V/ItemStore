require "HTTP"
require "launchy"

system "clear"
while true
  puts "What word would you like a definition of?"
  word = gets.chomp
  if word.downcase == "q"
    break
  else
    response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word.downcase}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")

    proresponse = HTTP.get("https://api.wordnik.com/v4/word.json/#{word.downcase}/pronunciations?useCanonical=false&limit=50&api_key=")
    word_info = response.parse

    response2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word.downcase}/audio?useCanonical=false&limit=50&api_key=")
    #definition needs to be a loop to iterate and find a nonempty "text" tag

    audio = response2.parse

    definition = ""

    index = 0
    while index < word_info.length
      if word_info[index].include?("text") == true
        definition = word_info[index]["text"]
      end
      index = index + 1
    end
    audiofile = audio[0]["fileUrl"]
    pro_info = proresponse.parse
    pronunciation = pro_info[0]["raw"]

    puts "The definition of #{word} is #{definition} It is pronounced #{pronunciation}"
    Launchy.open(audiofile)
  end
end
