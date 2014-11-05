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
]

puts "hit"

test_array = [ # 30 values was waaay to many.
{a: "1"},
{b: "2"},
]
cards = test_array
# cards = card_source # as to avoid editing card_source
cards.shuffle! # randomizes card order!
cards.each do |card|
  card.each do |eng, frnch|
    puts "Comment dit-on to #{eng}?"
    puts "you may need these. î, ê, é."
    guess = gets.chomp
    if frnch == guess
        puts "Correct!"
    else
    	puts "The correct translation is #{frnch}."
    	cards.push({eng => frnch})
        puts cards
    end
  end
  # break if guess == "quit" # This line of code errors. undefined variable guess
end