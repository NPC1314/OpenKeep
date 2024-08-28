/datum/voicepack/male/abyssariad/get_sound(soundin, modifiers)
	var/used
	switch(modifiers)
		if("old")
			used = getmold(soundin)
		if("silenced")
			used = getmsilenced(soundin)
	if(!used)
		switch(soundin)
			if("agony")
				used = list('sound/vo/male/abyssariad/cry(2).ogg','sound/vo/male/abyssariad/strangepain(6).ogg')
			if("chuckle")
				used = list('sound/vo/male/abyssariad/chuckle (1).ogg','sound/vo/male/abyssariad/chuckle(3).ogg')
			if("cry")
				used = list('sound/vo/male/abyssariad/cry(1).ogg','sound/vo/male/abyssariad/cry(3).ogg','sound/vo/male/abyssariad/cry(4).ogg')
			if("embed")
				used = list('sound/vo/male/abyssariad/pain(1).ogg','sound/vo/male/abyssariad/pain(4).ogg','sound/vo/male/abyssariad/pain(5).ogg','sound/vo/male/abyssariad/pain(3).ogg')
			if("firescream")
				used = list('sound/vo/male/abyssariad/pain.ogg','sound/vo/male/abyssariad/paincrit(3).ogg')
			if("gasp")
				used = list('sound/vo/male/abyssariad/paingasp.ogg','sound/vo/male/abyssariad/paingasp2.ogg')
			if("grumble")
				used = 'sound/vo/male/abyssariad/rude.ogg'
			if("haltyell")
				used = used = list('sound/vo/male/abyssariad/halt.ogg','sound/vo/male/abyssariad/halt(3).ogg','sound/vo/male/abyssariad/halt2.ogg')
			if("huh")
				used = list('sound/vo/male/abyssariad/huh.ogg','sound/vo/male/abyssariad/huh(2).ogg')
			if("laugh")
				used = list('sound/vo/male/abyssariad/laugh (1).ogg','sound/vo/male/abyssariad/laugh (2).ogg','sound/vo/male/abyssariad/laugh again.ogg','sound/vo/male/abyssariad/laugh(3).ogg','sound/vo/male/abyssariad/morelaugh.ogg')
			if("pain")
				used = list('sound/vo/male/abyssariad/pain(4).ogg','sound/vo/male/abyssariad/pain(5).ogg','sound/vo/male/abyssariad/pain(3).ogg')
			if("paincrit")
				used = list('sound/vo/male/abyssariad/painmoan.ogg','sound/vo/male/abyssariad/paincrit(3).ogg')
			if("painmoan")
				used = list('sound/vo/male/abyssariad/painmoan.ogg','sound/vo/male/elf/painmoan (2).ogg','sound/vo/male/elf/painmoan (3).ogg')
			if("painscream")
				used = list('sound/vo/male/elf/painscream (1).ogg','sound/vo/male/elf/painscream (2).ogg')
			if("rage")
				used = list('sound/vo/male/abyssariad/rage1.ogg','sound/vo/male/abyssariad/rage2.ogg','sound/vo/male/abyssariad/rage3.ogg')
			if("scream")
				used = list('sound/vo/male/abyssariad/scream.ogg','sound/vo/male/elf/scream (2).ogg')
			if("deathgurgle")
				used = pick('sound/vo/male/gen/deathgurgle (1).ogg','sound/vo/male/gen/deathgurgle (2).ogg','sound/vo/male/gen/deathgurgle (3).ogg')
			if("breathgasp")
				used = list('sound/vo/male/gen/breathgasp (1).ogg','sound/vo/male/gen/breathgasp (2).ogg','sound/vo/male/gen/breathgasp (3).ogg')
			if("burp")
				used = 'sound/vo/male/gen/burp.ogg'
			if("choke")
				used = 'sound/vo/male/gen/choke.ogg'
			if("clearthroat")
				used = list('sound/vo/male/gen/clearthroat (1).ogg','sound/vo/male/gen/clearthroat (2).ogg','sound/vo/male/gen/clearthroat (3).ogg')
			if("cough")
				used = list('sound/vo/male/gen/cough (1).ogg','sound/vo/male/gen/cough (2).ogg')
			if("fatigue")
				used = 'sound/vo/male/gen/fatigue.ogg'
			if("gag")
				used = list('sound/vo/male/gen/gag (1).ogg','sound/vo/male/gen/gag (2).ogg','sound/vo/male/gen/gag (3).ogg')
			if("groin")
				used = list('sound/vo/male/gen/groin (1).ogg','sound/vo/male/gen/groin (2).ogg')
			if("groan")
				used = list('sound/vo/male/gen/groan (1).ogg','sound/vo/male/gen/groan (2).ogg','sound/vo/male/gen/groan (3).ogg','sound/vo/male/gen/groan (4).ogg','sound/vo/male/gen/groan (5).ogg','sound/vo/male/gen/groan (6).ogg')
			if("hmm")
				used = 'sound/vo/male/abyssariad/huh2.ogg'
			if("hum")
				used = list('sound/vo/male/gen/hum (1).ogg','sound/vo/male/gen/hum (2).ogg','sound/vo/male/gen/hum (3).ogg')
			if("jump")
				used = 'sound/vo/male/gen/jump.ogg'
			if("leap")
				used = 'sound/vo/male/gen/leap.ogg'
			if("pain")
				used = list('sound/vo/male/gen/pain (1).ogg','sound/vo/male/gen/pain (2).ogg','sound/vo/male/gen/pain (3).ogg')
			if("paincrit")
				used = list('sound/vo/male/gen/paincrit (1).ogg','sound/vo/male/gen/paincrit (2).ogg')
			if("painscream")
				used = list('sound/vo/male/gen/painscream (1).ogg','sound/vo/male/gen/painscream (2).ogg','sound/vo/male/gen/painscream (3).ogg')
			if("rage")
				used = list('sound/vo/male/gen/rage (1).ogg','sound/vo/male/gen/rage (2).ogg')
			if("scream")
				used = list('sound/vo/male/gen/scream (1).ogg','sound/vo/male/gen/scream (2).ogg')
			if("sigh")
				used = 'sound/vo/male/gen/sigh.ogg'
			if("whimper")
				used = list('sound/vo/male/gen/whimper (1).ogg','sound/vo/male/gen/whimper (2).ogg','sound/vo/male/gen/whimper (3).ogg')
			if("yawn")
				used = list('sound/vo/male/gen/yawn (1).ogg','sound/vo/male/gen/yawn (2).ogg')
			if("attnwhistle")
				used = 'sound/vo/attn.ogg'
			if("praise")
				used = list('sound/vo/male/abyssariad/abyssariad_praise.ogg','sound/vo/male/abyssariad/abyssariad_praise2.ogg')
			if("yoo")
				used = 'sound/vo/male/abyssariad/yoooo.ogg'
			if("throatsing")
				if(prob(5))
					used = 'sound/vo/male/abyssariad/throatsing_rare.ogg' //I am not afraid.
				else
					used = list('sound/vo/male/abyssariad/throatsing1.ogg','sound/vo/male/abyssariad/mthroatsing1.ogg','sound/vo/male/abyssariad/mthroatsing2.ogg','sound/vo/male/abyssariad/mthroatsing3.ogg','sound/vo/male/abyssariad/mthroatsing4.ogg','sound/vo/male/abyssariad/mthroatsing5.ogg')
	if(!used)
		used = ..(soundin)
	return used
