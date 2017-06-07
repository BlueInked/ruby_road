def you_died(how)
  puts how, "Fail!"
  exit(0)
end

def start
  puts """
  You awaken disoriented in a darken room.
  To your right there is a flashlight that is on and providing the only light
  To your left there is a wrapped sandwich.
  You sit up and then? Eat?  Cry?  Take both? Take only the flashlight?
  """
  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "cry"
    bats
  elsif choice.include? "eat"
    you_died("Sandwich is poisoned, You Died!")
  elsif choice.include? "both"
    direction
  elsif choice.include? "flashlight"
    no_sandwich
  else
    you_died("Your indecisiveness has cost you your life.  You die!")
  end
end

def bats
  puts """
  Your girlish cries have awakened sleeping bats overhead.
  What do you do?
  Throw sandwich.  Use flashlight.  scream!
  """
  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "sandwich" || "flashlight"
    now_what
  elsif choice.include? "scream"
    you_died("The incessant sceaming has incensed the swarm.  They devour you.  You die!")
  else
    you_died("Your indecisiveness has cost you your life.  You die!")
  end
end

def now_what
  puts """
  You have distracted or scared the swarming bats
  Now what?
  If you have the sandwich still will you eat it?
  Are you still afraid?
  OR has your courage been renewed?
  """
  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "eat sandwich"
    you_died("Sandwich is poisoned, You Died!")
  elsif choice.include? "afraid"
    you_died("Paralyzed by fear and uncertainty you waste away and die.")
  elsif choice.include? "courage"
    direction
  else
    you_died("Your indecisiveness has cost you your life.  You die!")
  end
end


def direction
  puts """
  Using the flashlight you stand and sweep the area to get your bearings.
  You see that there are two tunnels in front of you.
  Which direction do you choose? Left or Right?
  """
  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "left" || "Left"
    left
  elsif choice.include? "right" || "Right"
    right
  else
    you_died("Your indecisiveness has cost you your life.  You die!")
  end
end

def no_sandwich
  puts"""
  Using the flashlight you stand and sweep the area to get your bearings.
  You see that there are two tunnels in front of you.
  Which direction do you choose? Left or Right?
  """
  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "left" || "Left"
    left
  elsif choice.include? "right" || "Right"
    no_sand_right
  else
    you_died("Your indecisiveness has cost you your life.  You die!")
  end
end

def left
    puts """
    You enter the dark corridor.
    As you continue along this way you notice that the space seems to be
    getting gradually smaller and smaller.
    Do you continue or turn back?
    """
    print ">> "
    choice = $stdin.gets.chomp

    if choice.include? "continue"
      you_died("You eventually get stuck in the shrinking tunnel and die.")
    elsif choice.include? "back"
      no_sand_right
    else
      you_died("Your indecisiveness has cost you your life.  You die!")
    end
end

def right
    puts """
    You enter the dark corridor.
    As you continue along this way you notice that the space is increasing
    until you are in a huge dark room.
    Next to the entrance is a switch.  Do you flip it or not?
    """
    print ">> "
    choice = $stdin.gets.chomp

    if choice.include? "flip"
      trap_door
    elsif choice.include? "don't" || "not"
      search
    else
      you_died("Your indecisiveness has cost you your life.  You die!")
    end
end

def no_sand_right
    puts """
    You enter the dark corridor.
    As you continue along this way you notice that the space is increasing
    until you are in a huge dark room.
    Next to the entrance is a switch.  Do you flip it or not?
    """
    print ">> "
    choice = $stdin.gets.chomp

    if choice.include? "flip"
      trap_door
    elsif choice.include? "don't" || "not"
      no_sand_search
    else
      you_died("Your indecisiveness has cost you your life.  You die!")
    end
end

def trap_door
  puts """
  A trap door opens beneath your feet and you slide down down down.
  When you finally land you can are in a brightly lit room.
  There is one opening and you can hear and see sunlight and birds.
  Do you leave the room and head up and outside?
  """
  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "leave" || "outside"
    freedom
  else
    you_died("Your indecisiveness has cost you your life.  You die!")
  end
end

def freedom
  puts """
  You've escaped the dungeon through not giving up and dumb luck!
  You are exhausted and a tadbit hungry.  Do you still have the sandwich?
  """
  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "no"
    puts "That's cool you shouldn't eat strange sandwiches anyways, let's go home!"
  elsif choice.include? "yes"
    eat
  else
    puts "The time trying to escape the dungeon has left you a little loopy."
    puts "Loopy or not, doesn't matter, what's important is that you're now free!"
  end
end

def eat
  puts "After all that you still have the sandwich.  Will you eat it?"

  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "yes"
    you_died("Sandwich is poisoned, You Died!")
  elsif choice.include? "no"
    puts "Yeah, who would eat strange sadnwiches?  Tosses the sandwich and heads home."
  else
    puts "Wow, you're more tired than we thought, forget it, let's just go home."
  end
end

def no_sand_search
  puts """
  You decide not to flip the switch.
  Do you search the room using the flashlight methodically or
  hapahazardly?
  """

  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "methodically"
    quiet
  elsif choice.include? "haphazardly"
    ogre_death
  else
    you_died("Your indecisiveness has cost you your life.  You die!")
  end
end

def search
  puts """
  You decide not to flip the switch.
  Do you search the room using the flashlight methodically or
  hapahazardly?
  """

  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "methodically"
    quiet
  elsif choice.include? "haphazardly"
    ogre
  else
    you_died("Your indecisiveness has cost you your life.  You die!")
  end
end

def ogre_death
  puts """
  Your flailing about has awoken a giant angry Ogre.
  He bares down on you ready to strike do you?
  Run backwards.  Run Forward. Fight.
  """

  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "back"
    backwards
  elsif choice.include? "forward"
    you_died("The Ogre is quicker than he looks.  He grabs you as you try to run.")
  elsif choice.include? "fight"
    you_died("Are you insane?! The Ogre Smashes You!")
  else
    you_died("The Ogre Rams into you tearing you limb from limb...")
  end
end

def backwards
  puts """
  The Ogre is chasing you and You're Back where you started!
  Go left? Or Last Stand?
  """

  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "left"
    left
  else
    you_died("Valiant Effort, but the Ogre has killed you.")
  end
end

def ogre
  puts """
  Your flailing about has awoken a giant angry Ogre.
  He bares down on you ready to strike do you?
  Run backwards.  Run Forward. Fight. Throw Him The Sandwich?
  """

  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "back"
    backwards
  elsif choice.include? "forward"
    you_died("The Ogre is quicker than he looks.  He grabs you as you try to run.")
  elsif choice.include? "fight"
    you_died("Are you insane?! The Ogre Smashes You!")
  elsif choice.include? "sandwich"
    killed_ogre
  else
    you_died("The Ogre Rams into you tearing you limb from limb...")
  end
end

def quiet
  puts """
  You carefully search the room.
  During your search you see a sleeping Ogre. Careful.
  Do you sneak past him or wake him up?
  """

  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "sneak"
    riches
  else
    ogre_death
  end
end

def killed_ogre
  puts """
  Thankfully you've kept the sandwich all this time and have given it to the Ogre.
  He takes the sandwich and begins to eat it.
  Moments pass, before he makes a horrible gurgling sound and grasps at his throat.
  The Sandwich was poisoned!  The Ogre has died.
  You say a little prayer for the deceased brute and continue through the room.

  """
  riches
end

def riches
  puts """
  After exiting the dark room that contained the Ogre you follow the only path available.
  This leads to a grand room filled with enough treasure to feed ten villages.
  How much will you take?  Enough for yourself?  For your family?  For the village?
  All of it?
  """

  print ">> "
  choice = $stdin.gets.chomp

  if choice.include? "myself"
    puts "Well that's kind of selfish."
  elsif choice.include? "family"
    puts "Looks like there's a new breadwinner in the household!"
  elsif choice.include? "village"
    puts "And just how are you going to carry all of that?"
  elsif choice.include? "all" || "All"
    puts "Greed is a mortal sin."
    start
  else
    you_died("Your indecisiveness has cost you your life.")
  end
end

start
