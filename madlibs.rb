class MadLibs

  def play
    puts <<-HEREDOC 
    "In #{proper_nouns}, born and raised
    On the #{places} is where I #{past_tense_verbs} most of my days
    #{verbs} out, #{verbs}, #{verbs} all #{adjectives}
    And all #{verbs} some #{things} #{adverbs} of the #{places}
    When a couple of #{people}s who were up to no good
    Started makin' #{nouns} in my #{places}
    I got in one #{adjectives} fight and my #{people} got #{adjectives}
    And said \"You're #{verbs} with your #{people} and #{people} in #{proper_nouns}\""
    HEREDOC
  end

  def nouns
    nouns = ['trouble', 'cake', 'toys']
    nouns.sample
  end

  def verbs
    verbs = ["relaxin'", "maxin'", "movin'", "makin'", "shootin'", "chillin'"]
    verbs.sample
  end

  def past_tense_verbs
    past_tense_verbs = ['raised', 'screamed', 'jammed', 'danced', 'spent', 'chilled']
    past_tense_verbs.sample
  end

  def adverbs
    adverbs = ['outside', 'inside', 'everywhere', 'underground']
    adverbs.sample
  end

  def adjectives
    adjectives = ['little', 'stupid', 'silly', 'awesome', 'cool', "scared", "tired"]
    adjectives.sample
  end

  def proper_nouns 
    proper_nouns = ['West Philadelphia', 'Bel-Air', 'West Germany', 'West Washington', 'Colorado Springs', 'South Raleigh']
    proper_nouns.sample
  end

  def people
    people = ['guy', 'dude', 'girl', 'uncle', 'auntie']
    people.sample
  end

  def places
    places = ['playground', 'neighborhood', 'bed']
    places.sample
  end

  def things
    things = ['b-ball', 'lasers', 'banjos', 'weed']
    things.sample
  end

end

fresh_prince = MadLibs.new
fresh_prince.play
