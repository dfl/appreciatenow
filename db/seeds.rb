# encoding: utf-8

Appreciation.delete_all

[ 
  "=those things you consider as faults", "voice", "how much you love me", "=you— all of you",
  "tenderness", "smile!", "inside light shining through your eyes", "farts", "vulnerability", "dirty mind",
  "your scent", "softness", "the gap between your teeth", "touch", "grace", "the way you listen so deeply",
  "gifts", "generosity", "the way you hold me", "strength", "=when you say you're sorry", "outrageousness",
  "sense of adventure", "forgiveness", "uniqueness", "spirit", "realness", "how goofy you can be", "openness",
  "=you just because", "how hard you try", "=you in my life", "mystery", "what a great friend you are", "passion",
  "how deeply you care", "shining light", "the joy in your heart", "how wise you are and how you always give ideas",
  "how scared you are sometimes", "great hugs", "dreams", "when you listen to me", "how you make me laught", "the sound of your laughter",
  "touch", "the wondrous journey we're on", "integrity", "kindness"
].each{|a| Appreciation.fast_create(a) }

# Appreciation.new(what: " ").save(validation:false)