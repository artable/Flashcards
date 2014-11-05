card_source = [ 
{fall: "tomber"},
{go_down: "descendre"},
{go_up: "monter"},
{become: "devenir"},
{return: "retourner"},
{pass_or_spend: "passer"},
{enter: "entrer"},
{re_enter: "rentrer"},
{exit: "sortir"},
{be_born: "naître"},
{die: "mourir"},
{leave_or_part: "partir"},
{come_back: "revenir"},
{snow: "neiger"},
{rain: "pleuvoir"},
{hail: "grêler"},
{stop: "arrêter"},
{wake_up: "se réveiller"},
{get_up: "se lever"},
{brush: "se brosser"},
{wash: "se laver"},
{comb: "se peigner"},
{take_a_bath: "se baigner"},
{shower: "se doucher"},
{dry: "se sêcher"},
{make_up: "se maquiller"},
{go_to_bed: "se coucher"},
{fall_asleep: "s'endormir"},
{take_a_walk: "se promener"},
# Missing a card!!!!!!!!!!
]
test_array = [
{rain: "pleuvoir"},
{exit: "sortir"},
]
cards = test_array
# cards = card_source
right = 0 # for later use!
wrong = 0
cards.shuffle! # randomizes card order!
cards.each do |card|
  card.each do |eng, frnch|
    puts "Comment dit-on to #{eng}?"
    puts "you may need these. î, ê, é."
    guess = gets.chomp
    if frnch == guess
      puts "Correct!"
      right += 1
    else
    	puts "The correct translation is #{frnch}."
      cards.push ({eng => frnch})
      wrong += 1
    end
  end
end
final = right - wrong
frequencies = Hash.new(0)
cards.each {|key| frequencies[key] += 1} # Applies the keys to frequency numbers
frequencies.each do |card, int|
  if int == 1
    print ""
  else
    int -= 1
    card.each do |eng, frnch| 
      puts "you missed #{eng} #{int} times." 
      total = card_source.count
      puts "total score: #{final} of #{total}"
    end
  end
end

