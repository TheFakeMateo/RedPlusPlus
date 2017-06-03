const_value set 2
	const CELADONUNIVERSITYHYPERTESTROOM_WESTWOOD
	const CELADONUNIVERSITYHYPERTESTROOM_SCIENTIST
	const CELADONUNIVERSITYHYPERTESTROOM_TWIN1
	const CELADONUNIVERSITYHYPERTESTROOM_TWIN2

CeladonUniversityHyperTestRoom_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

CeladonUniversityHyperTestRoomWestwoodScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_DRAGON_RAGE_MAGIKARP
	iftrue .TestComplete
	checkevent EVENT_PASSED_CELADON_HYPER_TEST
	iftrue .GiveMagikarp
	writetext .GreetingText
	waitbutton
	checkevent EVENT_LISTENED_TO_WESTWOOD_INTRO
	iftrue .HeardIntro
	writetext .IntroText
	waitbutton
	setevent EVENT_LISTENED_TO_WESTWOOD_INTRO
.HeardIntro
	writetext .QuestionText
	yesorno
	iffalse .NoHyperTest
	checkflag ENGINE_TOOK_HYPER_TEST
	iftrue .TookHyperTestToday
	setflag ENGINE_TOOK_HYPER_TEST
	writetext .BeginText
	waitbutton

	writetext .Question1IntroText
	waitbutton
	closetext
	refreshscreen $0
	trainerpic SILHOUETTE
	waitbutton
	closepokepic
	opentext
	writetext .Question1QuestionText
	loadmenudata .Question1MenuData
	verticalmenu
	closewindow
	if_not_equal $2, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	buttonsound

	writetext .Question2IntroText
	waitbutton
	closetext
	cry SLOWKING
	waitsfx
	opentext
	writetext .Question2QuestionText
	loadmenudata .Question2MenuData
	verticalmenu
	closewindow
	if_not_equal $3, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	buttonsound

	writetext .Question3IntroText
	waitbutton
	writetext .Question3QuestionText
	loadmenudata .Question3MenuData
	verticalmenu
	closewindow
	if_not_equal $4, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	buttonsound

	writetext .Question4IntroText
	waitbutton
	writetext .Question4QuestionText
	loadmenudata .Question4MenuData
	verticalmenu
	closewindow
	if_not_equal $1, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	buttonsound

	writetext .Question5IntroText
	waitbutton
	writetext .Question5QuestionText
	loadmenudata .Question5MenuData
	verticalmenu
	closewindow
	if_not_equal $3, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	buttonsound

	writetext .Question6IntroText
	waitbutton
	writetext .Question6QuestionText
	loadmenudata .Question6MenuData
	verticalmenu
	closewindow
	if_not_equal $4, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	buttonsound

	setevent EVENT_PASSED_CELADON_HYPER_TEST
.GiveMagikarp:
	writetext .CongratulationsText
	waitbutton

	checkcode VAR_PARTYCOUNT
	if_equal 6, .PartyFull
	writetext .ReceivedMagikarpText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke MAGIKARP, 10, EVIOLITE
	special TeachMagikarpDragonRage
	writebyte ULTRA_BALL
	special SetLastPartyMonBall
	setevent EVENT_GOT_DRAGON_RAGE_MAGIKARP

.TestComplete:
	writetext .TestOverText
	waitbutton
	closetext
	end

.NoHyperTest:
	writetext .RefusedText
	waitbutton
	closetext
	end

.TookHyperTestToday:
	writetext .AlreadyTookText
	waitbutton
	closetext
	end

.WrongAnswer:
	waitsfx
	playsound SFX_WRONG
	writetext .WrongAnswerText
	waitbutton
	closetext
	end

.PartyFull:
	writetext .PartyFullText
	waitbutton
	closetext
	end

.GreetingText:
	text "Prof.Westwood?"
	line "That would be me."
	done

.IntroText:
	text "A researcher"
	line "extraordinaire!"

	para "My findings are"
	line "second to none."

	para "No doubt I'll win"
	line "a commendation"
	cont "before long…"
	done

.QuestionText:
	text "Ahem. What was"
	line "that?"

	para "You came to take"
	line "the Celadon Univ-"
	cont "ersity Hyper Test?"
	done

.BeginText:
	text "Excellent!"

	para "The Hyper Test is"
	line "a series of six"
	cont "questions, testing"

	para "all of your senses"
	line "under pressure!"

	para "If you pass, you'll"
	line "receive a prize"

	para "worthy of our"
	line "university!"
	done

.CorrectText:
	text "Correct!"
	done

.Question1IntroText:
	text "Question 1:"
	line "Look closely!"
	done

.Question1QuestionText:
	text "What #mon's sil-"
	line "houette is this?"
	done

.Question2IntroText:
	text "Question 2:"
	line "Listen carefully!"
	done

.Question2QuestionText:
	text "What #mon's cry"
	line "is this?"
	done

.Question3IntroText:
	text "Question 3:"
	done

.Question3QuestionText:
	text "Which medicine"
	line "tastes bitter?"
	done

.Question4IntroText:
	text "Question 4:"
	done

.Question4QuestionText:
	text "Which #mon"
	line "has Dry Skin?"
	done

.Question5IntroText:
	text "Question 5:"
	done

.Question5QuestionText:
	text "Which Berry"
	line "smells blue?"
	done

.Question6IntroText:
	text "Question 6:"
	line "Think wisely!"
	done

.Question6QuestionText:
	text "Who is the most"
	line "accomplished"
	cont "professor?"
	done

.CongratulationsText:
	text "Congratulations!"

	para "You passed the"
	line "Hyper Text with"
	cont "flying colors!"

	para "Here's your prize--"
	line "a uniquely bred"

	para "Magikarp that"
	line "knows Dragon Rage!"
	done

.ReceivedMagikarpText:
	text "<PLAYER> received"
	line "Magikarp!"
	done

.TestOverText:
	text "Our students have"
	line "the tenacity of a"

	para "Magikarp strugg-"
	line "ling to evolve."
	cont "And so do you!"
	done

.PartyFullText:
	text "Oh no! Your party"
	line "is full…"
	done

.RefusedText:
	text "Well, if you're"
	line "certain."
	done

.AlreadyTookText:
	text "But you already"
	line "attempted the test"
	cont "today!"

	para "You may retake"
	line "it tomorrow."
	done

.WrongAnswerText:
	text "I'm sorry, that's"
	line "incorrect!"

	para "You may try and"
	line "retake the Hyper"
	cont "Test tomorrow."
	done

.Question1MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 11 ; end coords
	dw .Question1MenuData2
	db 1 ; default option

.Question1MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Umbreon@"
	db "Glaceon@"
	db "Persian@"
	db "Girafarig@"

.Question2MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 10 ; end coords
	dw .Question2MenuData2
	db 1 ; default option

.Question2MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Blissey@"
	db "Qwilfish@"
	db "Slowking@"
	db "Venomoth@"

.Question3MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 13 ; end coords
	dw .Question3MenuData2
	db 1 ; default option

.Question3MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Elixir@"
	db "Calcium@"
	db "Antidote@"
	db "Heal Powder@"

.Question4MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 12 ; end coords
	dw .Question4MenuData2
	db 1 ; default option

.Question4MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Parasect@"
	db "Magmar@"
	db "Sandslash@"
	db "Victreebel@"

.Question5MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 13 ; end coords
	dw .Question5MenuData2
	db 1 ; default option

.Question5MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Cheri Berry@"
	db "Lum Berry@"
	db "Oran Berry@"
	db "Pecha Berry@"

.Question6MenuData:
	db $40 ; flags
	db 01, 00 ; start coords
	db 11, 15 ; end coords
	dw .Question6MenuData2
	db 1 ; default option

.Question6MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Prof.Oak@"
	db "Prof.Elm@"
	db "Prof.Willow@"
	db "Prof.Westwood@"

CeladonUniversityHyperTestRoomScientistScript:
	jumptextfaceplayer .Text

.Text:
	text "The Hyper Test is"
	line "a rite of passage"

	para "for all Celadon"
	line "University grad-"
	cont "uates."

	para "It tests all of"
	line "their faculties to"
	cont "the utmost!"
	done

CeladonUniversityHyperTestRoomTwin1Script:
	jumptextfaceplayer .Text

.Text:
	text "I'll pass the Hyper"
	line "Test before you!"
	done

CeladonUniversityHyperTestRoomTwin2Script:
	jumptextfaceplayer .Text

.Text:
	text "No, I'll pass the"
	line "Hyper Test before"
	cont "you!"
	done

CeladonUniversityHyperTestRoomMagikarpSign:
	refreshscreen $0
	pokepic MAGIKARP
	cry MAGIKARP
	waitbutton
	closepokepic
	jumptext .Text

.Text:
	text "A Magikarp is"
	line "swimming around."
	done

CeladonUniversityHyperTestRoomBookshelf1:
	jumptext .Text

.Text:
	text "This book has a"
	line "bookmark in it."

	para "Someone's not done"
	line "with it yet!"
	done

CeladonUniversityHyperTestRoomBookshelf2:
	jumptext .Text

.Text:
	text "It's a copy of"
	line "Nintendo Power!"

	para "A Pikachu picture"
	line "fills the front"
	cont "cover."
	done

CeladonUniversityHyperTestRoomComputer:
	jumptext .Text

.Text:
	text "There's a file on"
	line "the desktop named"
	cont "questions.txt."

	para "Better not cheat!"
	done

CeladonUniversityHyperTestRoom_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $b, $2, 4, CELADON_UNIVERSITY_2F
	warp_def $b, $3, 4, CELADON_UNIVERSITY_2F

.XYTriggers:
	db 0

.Signposts:
	db 5
	signpost 1, 2, SIGNPOST_READ, CeladonUniversityHyperTestRoomMagikarpSign
	signpost 1, 6, SIGNPOST_READ, CeladonUniversityHyperTestRoomBookshelf1
	signpost 1, 7, SIGNPOST_READ, CeladonUniversityHyperTestRoomBookshelf2
	signpost 4, 7, SIGNPOST_RIGHT, CeladonUniversityHyperTestRoomComputer
	signpost 6, 7, SIGNPOST_RIGHT, CeladonUniversityHyperTestRoomComputer

.PersonEvents:
	db 4
	person_event SPRITE_WESTWOOD, 2, 4, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CeladonUniversityHyperTestRoomWestwoodScript, -1
	person_event SPRITE_SCIENTIST, 7, 6, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, CeladonUniversityHyperTestRoomScientistScript, -1
	person_event SPRITE_TWIN, 6, 1, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CeladonUniversityHyperTestRoomTwin1Script, -1
	person_event SPRITE_TWIN, 8, 1, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, CeladonUniversityHyperTestRoomTwin2Script, -1