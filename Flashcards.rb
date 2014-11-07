card_source_all = [
{lose: "perdre"},
{beat: "battre"},
{wait_for: "attendre"},
{hear: "entendre"},
{turn_off: "éteindre"},
{be: "être"},
{have: "avoir"},
{go: "aller"},
{come: "venir"},
{do_or_make: "faire"},
{re_do_or_do_over: "refaire"},
{be_able_to: "pouvoir"},
{want_or_wish: "vouloir"},
{have_to_or_must: "devoir"},
{say_or_tell: "dire"},
{see: "voir"},
{know_a_fact: "savoir"},
{know_be_familiar_with: "connaître"},
{read: "lire"},
{write: "écrire"},
{laugh: "rire"},
{smile: "sourire"},
{describe: "décrire"},
{sleep: "dormir"},
{take: "prendre"},
{learn: "apprendre"},
{understand: "comprendre"},
{drive: "conduire"},
{translate: "traduire"},
{stay: "rester"}, 
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
{shave: "se raser"},
# Needs to have... all 150. currently contains 91-150
]
card_source_1_30 = [
]
card_source_31_60 = [
]
card_source_61_90 = [
]
card_source_91_120 = [
{lose: "perdre"},
{beat: "battre"},
{wait_for: "attendre"},
{hear: "entendre"},
{turn_off: "éteindre"},
{be: "être"},
{have: "avoir"},
{go: "aller"},
{come: "venir"},
{do_or_make: "faire"},
{re_do_or_do_over: "refaire"},
{be_able_to: "pouvoir"},
{want_or_wish: "vouloir"},
{have_to_or_must: "devoir"},
{say_or_tell: "dire"},
{see: "voir"},
{know_a_fact: "savoir"},
{know_be_familiar_with: "connaître"},
{read: "lire"},
{write: "écrire"},
{laugh: "rire"},
{smile: "sourire"},
{describe: "décrire"},
{sleep: "dormir"},
{take: "prendre"},
{learn: "apprendre"},
{understand: "comprendre"},
{drive: "conduire"},
{translate: "traduire"},
{stay: "rester"},
]
card_source_121_150 = [
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
{shave: "se raser"},
]
test_array = [
{rain: "pleuvoir"},
{exit: "sortir"},
]
# cards = test_array # Still edits test_array... 
# cards = card_source_all # Still edits card_source...
# cards = card_source_121_to_150
cards = card_source_91_120
right = 0 # for later use!
wrong = 0
fix = 0
total = cards.count
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
frequencies = Hash.new(0)
cards.each {|key| frequencies[key] += 1} # Applies the keys to frequency numbers
frequencies.each do |k, v|
  unless v == 1
    fix += v - 2 # - 2 because - 1 causes wrong = fix. 
  end
end
wrong -= fix
final = right - wrong
frequencies.each do |card, int|
  unless int == 1
    int -= 1
    card.each do |eng, frnch|
      puts "you missed to #{eng} #{int} times."
    end
  end
end
puts "total score: #{final} of #{total}"



