# require './keysmod.rb'


# I set each room(scene) to a class, and make them all a scene
class Scene
	def enter()
		exit(1)
	end
end


# this is the "main room" in which you can access the other scenes
class MainRoom < Scene


	def enter
		puts "Hello, and welcome to the game. The last thing you 
		remember is taking some questionable drugs in your friends basement. 
		Suddenly you find yourself in a strange room."
		puts "The room has 5 doors. One door has 4 locks on it. Choose a door number\nto go in."
		
		
		@key_one = "hi"

		choice = $stdin.gets.chomp

		if	choice.include? "1"	
			if @key_one == true
			 	puts "You already did that room"

			else
				return "ganja_room"
			end
		end 

		

		

		
		if choice.include? "2"
			return "oppression_room"
		elsif choice.include? "3"
			return "purgatory"
		elsif choice.include? "4"
			return "election_room"
		else 
			puts "Quit bein a wise guy and pick a door number."
		end
	end

	def room_one_done

		## maybe set a @variable and make it from false => true
		@key_one = true
	return	
	end
end

####### I don't want to repeat all this code. Need a way to tell the MainRoom class
####### that the player got the first key and can't go back in that room.

# class MainRoom1 < Scene

# 	def enter()
# 		puts 'You got your first key! You\'re doing aight. Choose your next room: '
# 		choose = $stdin.gets.chomp

# 		if choice.include? "1"
# 			return "ganja_room"
# 		elsif choice.include? "2"
# 			return "oppression_room"
# 		elsif choice.include? "3"
# 			return "election_room"
# 		elsif choice.include? "4"
# 			return "mancave"
# 		else 
# 			puts "Quit bein a wise guy and pick a door number."
# 		end
# 	end
# end



	
class Purgatory < Scene
	def enter()
		puts "Congratulations, you have almost made it to heaven."
		puts "Except this is purgatory. You'll get to heaven in a few million years."
		puts "Approximately how many times would you say you sinned per day?" 
		print "On average: > "

		sins_per_day = $stdin.gets.chomp.to_i

		puts "How many years have you been on this great planet? > "
		years = $stdin.gets.chomp.to_i
	

		sin_per_year = sins_per_day * 365
		life_sins = years * sin_per_year

		if life_sins >= 15000 
			puts "WOW! About #{life_sins} SINS! That's a lot of sins! Do you know the bible verse Ezekiel 25:17?" 
			print "> "
			answer = $stdin.gets.chomp
				if answer == "yes"
					puts "Ok, you can leave purgatory and travel to the next dimension."
					return "heaven"
				else 
					puts "Alright mothafucka, there ain't many other reasons for you to live."
					puts "Burn in hell!!!"
					dead("""


						You got rekt.""")
				return "loser"
				end
	
		elsif life_sins < 15000
		puts "You're saved! Here's a 100% off purgatory time voucher! JZUZ69"
		puts "Please enter your voucher: > "
		code = $stdin.gets.chomp
			if code.include? "JZUZ69"
				return "heaven"
			else 
				puts "WHY COULDN'T YOU WRITE WHAT I TOLD YOU. IT WAS THE FUCKING COUPON CODE TO HEAVEN."
				return "loser"
			end
		return
		end
	return	
	end
end

	


class Heaven < Scene
	def enter()
		puts "Ayy you made it to heaven! I guess you won the game. Here's some gamerscore."
		puts "\t\t\n*****+1 GS*****"
		puts "\nJust kidding, no achievements for you."

		exit(0)
	end
end


class GanjaRoom < Scene
	
	def enter()
		puts "You've entered a room filled with ganja, and the door slams shut behind you."
	puts "It looks like you will have to smoke your way to find the key."
	print "\n You just smoked two joints in the morning. Then when do you smoke two more? > "

	smoke = $stdin.gets.chomp
		while true
			if smoke.include? "night"
				puts "Wow, you smoked 4 joints, you're stoned now. Can you solve this math problem?"
				puts " 3 * 14 - 24 / 6 + 7 * 3?"

				math = $stdin.gets.chomp.to_i
				if math == 59
					puts "Wow! You can do math after smoking 4 joints! Here's a key!"
					puts "* You got the key for room one! *"
					$one_done = true
					# Keys.room_one_key
					return $one_done.room_one_done
					return "main_room"
			
				else 
					puts "Ok stoney, one more chance, let's see if you paid attention in school."
					puts "If an atom has 27 protons, how many electrons does it have?"
					chem = $stdin.gets.chomp

					if chem.include? "27"
						puts "So you did pay attention in school. Here's your key."
						puts "* You got the key for room one! *"
						room_one_key = true
						return "main_room"
				
					else 
						puts "Aww I hope you didn't get a bunch of keys before this because you just lost!"
						exit()
				return	end
				end
			else 
				puts "You obviously haven't heard the song smoke two joints by Sublime. Or maybe you \nsmoke too much to remember it."
				puts "What state was the first to legalize recreational weed?"
				weed = $stdin.gets.chomp

				if weed.include? "rado"
					puts "You're right! Here's a key."
					puts "* You got the key for room one! *"
					room_one_key = true
					return "main_room"
				else 
					puts "Wrongo, it was Colorado. GG no re, you lost."
					return "loser"
			return	end
			end
		return	
		end
	return
	end
end 

class OppressionRoom < Scene
	
	def enter()
		
		puts "As you walk into this room you see a dim light down a long hallway."
		puts "Press 'Enter' to continue or type 'go back' if you're afraid of dimly lit sketchy hallways"
		room_two_starter = $stdin.gets.chomp
		# room_two_key = false

		if room_two_starter.include? "back"
			main_room
		end

		puts "As you reach the room, you find a gun with two bullets, then see \n\t*Hitler\n\t*Osama bin Laden\n\t*and George Lucas, all sitting at a table playing Cards Against Humanity."
		puts "\nWho are you going to KILL?"
		kill = $stdin.gets.chomp

	
		if kill.include? "itler"
			puts "You just prevented the death of millions of people, and now the world will be changed forever."
			puts "Do you lead the world into peace and prosperity, or lead humanity to a new world war?"
			future = $stdin.gets.chomp

			if future.include? "peace"
				puts "Thanks for being a good person. Kittens, cuddles, burritos, and Netflix for all people."
				puts "Here's a key for you, champ."
				puts "* You got the key for room two! *"
				return "main_room"
				# room_two_key = true
				main_room
			elsif future.include? "war"
				puts "War is good for nothing, and so are you if that's what you want."
				puts "Are you sure that's what you want to do? Press Enter to continue or type 'I want peace'."
				war_forsure = $stdin.gets.chomp
				if war_forsure.include? "peace"
					puts "Ok, you made the right choice. Here's the key."
					puts "* You got the key for room two! *"
					# room_two_key = true
					return "main_room"
				else
					puts "Alright, you lose."

					return "loser"
				end
			end
		elsif kill.include? "sama"
			puts "You prevented the twin towers from being destroyed. I think it was entirely his fault anyway."
			puts "But does jet fuel melt steel beams?"

			conspir = $stdin.gets.chomp
			if conspir.include? "no"
				puts "You're right, maybe there was something else going on. Ponder it over your key."
				return "main_room"
			else 
				puts "You're wrong. Thanks for participating in my dank meme."
				return "loser"
			end

		elsif kill.include? "eorge"
			puts "He truly did fuck Indiana Jones right in the butt, and then sold off
			Star Wars like it was nothing. I can't say I blame you for choosing him."
			puts "\n But just because I'm curious, what was your favorite Star Wars movie?"

			star_wars = $stdin.gets.chomp

			if star_wars.include? "new"
				puts "Ok, you fucked up in life."
				return  "loser"
			elsif star_wars.include? "old"
				puts "Ahh good choice m8. I love that one too. Here's your key."
				puts "*** You got the key for room # 2! ***"
				return "main_room"
			end
		else 
			puts "Unfortunately you can only choose to kill someone at this table."
			return "oppression_room"
		return
		end
	return 
	end
end

class ElectionRoom < Scene
	
	def enter()
		puts "The GOP primaries are coming up, and you have to vote for 
		one of these idiots. Who is it gonna be?"
		puts "1. Jeb Bush"
		puts "2. Donald Trump"
		puts "3. Ben Carson"
		puts "4. Chrispie Creme Christie"

		print "Choose a number: > "
		@GOP = gets.chomp

		if @GOP == "1" #|| GOP.include? "eb"
			puts "You want another Bush? Two 14 year wars weren't enough for you? 
			Are you sure? Type Yes or No."
	
			jeb = $stdin.gets.chomp
			if jeb == "Yes"
				puts "You've doomed us all to another 10 year war!"
				return "loser"
			else 
				puts "Ok, good. He's a pothead anyway. Promise you'll elect Bernie, and take this key."
				return "main_room"
			return
			end

		elsif @GOP == "2" #|| GOP.include? "trump"
			puts "So you want one of the biggest idiots and bigots 
			on the planet in the white house huh? Type Yes or No to confirm."
			trump = $stdin.gets.chomp

			if trump.include? "es"
				puts "Alright, America. FUCK THIS SHIT IM OUT"
				puts "...I think he just left the country."
				return "loser"
			else 
				puts "Good thinking, he doesn't know anything about politics."
				puts "Have a key because I don't want to put another if statement here."
				return "main_room"
			return
			end

		elsif @GOP == "3" #|| GOP.include? "arson"
			puts "So you want a retired doctor with no political experience
			who doesn't acknowledge the longtime embedded racism in the party he belongs to? 
			Type Yes or No to confirm."
			carson = $stdin.gets.chomp

			if carson.include? "es"
				puts "Well that's great, he's a black man who's racist against muslims. You fucked us."
				return "loser"
			else 
				puts "Ok, good choice. Elect someone who could actually lead the nation."
				puts " Would you vote for Bernie or Hillary? > "
				democrat = $stdin.gets.chomp
				if democrat.include? "ernie"
					puts "Yay maybe we can have a president who will hold his word. Have a key."
					return "main_room"
				else 
					puts "You have to be blind or just not looking if you can't see through Hillary's lies. Fuck."
					return "loser"
				return
				end
			return	
			end

		elsif @GOP == "4" #|| GOP.include? "hristie"
			puts "So you want a man who's depised by 75% of his home state by repeatedly 
			disenfranchising the middle class and destroying public schools to be president?
			Type Yes or No to confirm."
			christie = $stdin.gets.chomp

			if christie.include? "es"
				puts "Good job, you just put a bullying, lying, son of a bitch in the white house."
				puts "I didn't know America, or this game could get any worse."
				return "loser"
			else 
				puts "Thanks for using your head and not voting for an obvious LIAR. Take a key and vote Bernie 2016!"
				return "main_room"
			return
			end

		else 
			puts "Thank you for passing the idiot test and NOT voting for the GOP. Fuck that bear."
			puts "Here's a key for you for passing the test."
			return "main_room"
		return	
		end
	return	
	end
end

class Mancave < Scene
	
	def enter()
	
	end
end

class YouWin < Scene
	def enter()
		puts "Congrats motherfucker! You made it all the way through my 
		tricky little game. You're gonna get so much Reddit karma for this!"
		exit()
	end
end

class YouLose < Scene
	def enter()
		puts "Hah it sucks to lose at easy games."
		exit()
	end
end

class Engine 

	def initialize(go)
		@go = go
	end

	def start()
		current_room = @go.start_room()
		last_room = @go.next_room("you_win")

		while current_room != last_room
			#text_launch starts the text story, then returns the correct room
			text_launch = current_room.enter()
			current_room = @go.next_room(text_launch)
		end

		last_room.enter()

	end
end

class RoomMap 
	@@map = {
		'main_room' => MainRoom.new(),
		'ganja_room' => GanjaRoom.new(MainRoom.new()),
		'purgatory'  => Purgatory.new(),
		'heaven' => Heaven.new(),
		'oppression_room' => OppressionRoom.new(),
		'election_room' => ElectionRoom.new(),
		'mancave' => Mancave.new(),
		'loser' => YouLose.new(),
		'you_win' => YouWin.new(),
	}
	
	def initialize(start)
		@start = start
	end

	def start_room()
		return	@@map[@start]
	end

	def next_room(returned_room)
		call = @@map[returned_room]
	end
end



a_room_map = RoomMap.new("main_room")
vroom = Engine.new(a_room_map)
vroom.start()


