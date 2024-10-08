/datum/voicepack/female/abyssariad/get_sound(soundin, modifiers)
	var/used
	switch(modifiers)
		if("old")
			used = getfold(soundin)
		if("young")
			used = getfyoung(soundin)
		if("silenced")
			used = getfsilenced(soundin)
	if(!used)
		switch(soundin)
			if("deathgurgle")
				used = pick('sound/vo/female/gen/deathgurgle (1).ogg','sound/vo/female/gen/deathgurgle (2).ogg','sound/vo/female/gen/deathgurgle (3).ogg')
			if("agony")
				used = list('sound/vo/female/gen/agony (1).ogg','sound/vo/female/gen/agony (2).ogg','sound/vo/female/gen/agony (3).ogg')
			if("breathgasp")
				used = 'sound/vo/female/gen/breathgasp.ogg'
			if("burp")
				used = 'sound/vo/female/gen/burp.ogg'
			if("choke")
				used = list('sound/vo/female/gen/choke (1).ogg','sound/vo/female/gen/choke (2).ogg','sound/vo/female/gen/choke (3).ogg')
			if("chuckle")
				used = list('sound/vo/female/gen/chuckle (1).ogg','sound/vo/female/gen/chuckle (2).ogg','sound/vo/female/gen/chuckle (3).ogg')
			if("clearthroat")
				used = 'sound/vo/female/gen/clearthroat.ogg'
			if("cough")
				used = list('sound/vo/female/gen/cough (1).ogg','sound/vo/female/gen/cough (2).ogg')
			if("cry")
				used = list('sound/vo/female/gen/cry (1).ogg','sound/vo/female/gen/cry (2).ogg','sound/vo/female/gen/cry (3).ogg','sound/vo/female/gen/cry (4).ogg','sound/vo/female/gen/cry (5).ogg','sound/vo/female/gen/cry (6).ogg','sound/vo/female/gen/cry (7).ogg')
			if("drown")
				used = list('sound/vo/female/gen/drown (1).ogg','sound/vo/female/gen/drown (2).ogg','sound/vo/female/gen/drown (3).ogg')
			if("embed")
				used = list('sound/vo/female/gen/embed (1).ogg','sound/vo/female/gen/embed (2).ogg','sound/vo/female/gen/embed (3).ogg','sound/vo/female/gen/embed (4).ogg')
			if("fatigue")
				used = list('sound/vo/female/gen/fatigue (1).ogg','sound/vo/female/gen/fatigue (2).ogg','sound/vo/female/gen/fatigue (3).ogg')
			if("firescream")
				used = list('sound/vo/female/gen/firescream (1).ogg','sound/vo/female/gen/firescream (2).ogg')
			if("gag")
				used = list('sound/vo/female/gen/gag (1).ogg','sound/vo/female/gen/gag (2).ogg','sound/vo/female/gen/gag (3).ogg')
			if("gasp")
				used = list('sound/vo/female/gen/gasp (1).ogg','sound/vo/female/gen/gasp (2).ogg','sound/vo/female/gen/gasp (3).ogg')
			if("giggle")
				used = list('sound/vo/female/gen/giggle (1).ogg','sound/vo/female/gen/giggle (2).ogg')
			if("groan")
				used = list('sound/vo/female/gen/groan (1).ogg','sound/vo/female/gen/groan (2).ogg','sound/vo/female/gen/groan (3).ogg','sound/vo/female/gen/groan (4).ogg','sound/vo/female/gen/groan (5).ogg')
			if("grumble")
				used = 'sound/vo/female/gen/grumble.ogg'
			if("haltyell")
				used = list('sound/vo/female/gen/haltyell (1).ogg','sound/vo/female/gen/haltyell (2).ogg')
			if("hmm")
				used = 'sound/vo/female/gen/hmm.ogg'
			if("huh")
				used = list('sound/vo/female/gen/huh (1).ogg','sound/vo/female/gen/huh (2).ogg','sound/vo/female/gen/huh (3).ogg')
			if("hum")
				used = list('sound/vo/female/gen/hum (1).ogg','sound/vo/female/gen/hum (2).ogg','sound/vo/female/gen/hum (3).ogg')
			if("jump")
				used = 'sound/vo/female/gen/jump.ogg'
			if("leap")
				used = 'sound/vo/female/gen/jump.ogg'
			if("laugh")
				used = list('sound/vo/female/gen/laugh (1).ogg','sound/vo/female/gen/laugh (2).ogg','sound/vo/female/gen/laugh (3).ogg')
			if("pain")
				used = list('sound/vo/female/gen/pain (1).ogg','sound/vo/female/gen/pain (2).ogg','sound/vo/female/gen/pain (3).ogg')
			if("paincrit")
				used = list('sound/vo/female/gen/paincrit (1).ogg','sound/vo/female/gen/paincrit (2).ogg','sound/vo/female/gen/paincrit (3).ogg')
			if("painmoan")
				used = list('sound/vo/female/gen/painmoan (1).ogg','sound/vo/female/gen/painmoan (2).ogg','sound/vo/female/gen/painmoan (3).ogg','sound/vo/female/gen/painmoan (4).ogg','sound/vo/female/gen/painmoan (5).ogg','sound/vo/female/gen/painmoan (6).ogg','sound/vo/female/gen/painmoan (7).ogg','sound/vo/female/gen/painmoan (8).ogg')
			if("painscream")
				used = list('sound/vo/female/gen/painscream (1).ogg','sound/vo/female/gen/painscream (2).ogg','sound/vo/female/gen/painscream (3).ogg','sound/vo/female/gen/painscream (4).ogg','sound/vo/female/gen/painscream (5).ogg','sound/vo/female/gen/painscream (6).ogg','sound/vo/female/gen/painscream (7).ogg','sound/vo/female/gen/painscream (8).ogg')
			if("rage")
				used = list('sound/vo/female/gen/rage (1).ogg','sound/vo/female/gen/rage (2).ogg','sound/vo/female/gen/rage (3).ogg')
			if("scream")
				used = list('sound/vo/female/gen/scream (1).ogg','sound/vo/female/gen/scream (2).ogg','sound/vo/female/gen/scream (3).ogg','sound/vo/female/gen/scream (4).ogg')
			if("shh")
				used = list('sound/vo/female/gen/shh.ogg','sound/vo/female/gen/shh (2).ogg')
			if("sigh")
				used = list('sound/vo/female/gen/sigh (1).ogg','sound/vo/female/gen/sigh (2).ogg','sound/vo/female/gen/sigh (3).ogg')
			if("snore")
				used = list('sound/vo/female/gen/snore (1).ogg','sound/vo/female/gen/snore (2).ogg','sound/vo/female/gen/snore (3).ogg')
			if("whimper")
				used = list('sound/vo/female/gen/whimper (1).ogg','sound/vo/female/gen/whimper (2).ogg','sound/vo/female/gen/whimper (3).ogg')
			if("whistle")
				used = list('sound/vo/female/gen/whistle (1).ogg','sound/vo/female/gen/whistle (2).ogg','sound/vo/female/gen/whistle (3).ogg','sound/vo/female/gen/whistle (4).ogg','sound/vo/female/gen/whistle (5).ogg','sound/vo/female/gen/whistle (6).ogg','sound/vo/female/gen/whistle (7).ogg')
			if("yawn")
				used = list('sound/vo/female/gen/yawn (1).ogg','sound/vo/female/gen/yawn (2).ogg','sound/vo/female/gen/yawn (3).ogg')
			if("attnwhistle")
				used = 'sound/vo/attn.ogg'
			if("psst")
				used = 'sound/vo/psst.ogg'
			if("sexmoanlight")
				used = list('sound/vo/female/gen/se/sexlight (1).ogg','sound/vo/female/gen/se/sexlight (2).ogg','sound/vo/female/gen/se/sexlight (3).ogg','sound/vo/female/gen/se/sexlight (4).ogg','sound/vo/female/gen/se/sexlight (5).ogg','sound/vo/female/gen/se/sexlight (6).ogg','sound/vo/female/gen/se/sexlight (7).ogg')
			if("sexmoanhvy")
				used = list('sound/vo/female/gen/se/sex (1).ogg','sound/vo/female/gen/se/sex (2).ogg','sound/vo/female/gen/se/sex (3).ogg','sound/vo/female/gen/se/sex (4).ogg','sound/vo/female/gen/se/sex (5).ogg','sound/vo/female/gen/se/sex (6).ogg','sound/vo/female/gen/se/sex (7).ogg','sound/vo/female/gen/se/sex (8).ogg')
			if("moan")
				used = list('sound/vo/female/gen/moan (1).ogg','sound/vo/female/gen/moan (2).ogg','sound/vo/female/gen/moan (3).ogg')

	return used