# encoding: utf-8

Appreciation.delete_all

[ 
  "=those things you consider as faults", "voice", "how much you love me", "=you— all of you",
  "tenderness", "smile!", "inside light shining through your eyes", "farts", "vulnerability", "dirty mind",
  "the way you smell", "softness", "the gap between your teeth", "touch", "grace", "the way you listen so deeply",
  "gifts", "generosity", "the way you hold me", "strength", "=when you say you're sorry", "outrageousness",
  "sense of adventure", "forgiveness", "uniqueness", "spirit", "realness", "how goofy you can be", "openness",
  "you just because", "effort", "you in my life", "mystery", "what a great friend you are", "passion",
  "how deeply you care", "shining light", "the joy in your heart", "how wise you are and how you always give ideas",
  "how scared you are sometimes", "great hugs", "dreams", "when you listen to me", "how you make me laugh", "the sound of your laughter",
  "touch", "the wondrous journey we're on", "integrity", "kindness", "the divinity within you", "thoughtfulness",
  "enthusiasm", "how you keep trying", "skills"
].each{|a| Appreciation.fast_create(a) }

# Appreciation.new(what: " ").save(validation:false)