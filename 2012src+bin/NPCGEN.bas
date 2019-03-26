Dim shared as integer a,b,c,d,e,f
Dim shared as integer BarX,BarY
Dim shared As Integer mousex, mousey, buttons, res, LeftClickCounter, RightClickCounter, LeftClick, RightClick
Dim shared as string MoodName1,MoodName2,Mood
Declare Sub DetectClick()
Declare Sub MoodName()
Declare Sub GetMood()
Declare Sub MakeNewCharacter()
Declare Sub CreateNumber()
Declare Sub PrintMenu()
Declare Sub PrintCharacter()
Declare Sub PrintBar()

'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------

'Start of Program'
LeftClick = 0
RightClick = 0
Screen 18, 32
MakeNewCharacter()
PrintCharacter()
PrintMenu()

'Mouse loop
Do
' Get mouse x, y and buttons. Discard wheel position.
    res = GetMouse (mousex, mousey, , buttons)


If res <> 0 Then '' Failure
Else

'MAIN MENU: 

'Button1
        if mousex>475 and mousex<630 and mousey>443 and mousey<470 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                PrintCharacter()
                MakeNewCharacter()
                end if
        end if
'NO MORE BUTTONS

end if

sleep 100
Loop While Inkey = ""

End

'end of big loop

'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------

sub PrintMenu()
    
Color RGB(000, 000, 000), RGB(255, 255, 255)
Line (475, 443)- (630, 470), ,BF
Color RGB(255, 255, 255), RGB(000, 000, 000)
locate 29,61
Print "New Everything"

Color RGB(000, 000, 000), RGB(255, 255, 255)
end sub

'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------

sub PrintCharacter()
Color RGB(000, 000, 000), RGB(255, 255, 255)
Cls                     
PrintMenu()

Color RGB(000, 000, 000), RGB(255, 255, 255)
'All the boxes
Line (5, 12)- (632, 34), ,BF
Line (5, 40)- (120, 274), ,BF
Line (220, 40)- (360, 274), ,BF
Line (5, 285)- (120, 450), ,BF

'Now words
Color RGB(255, 255, 255), RGB(000, 000, 000)

Locate 2, 3
print Mood

Locate 4,3
print "Intuitive"
Locate 4,30
print "Analytical"
Locate 5,3
print "Introverted"
Locate 5,30
print "Extroverted"
Locate 6,3
print "Concrete"
Locate 6,30
print "Abstract"

Color RGB(0, 128, 255), RGB(000, 000, 000)
Locate 7,3
Print "Law"
Locate 7,30
Print "Chaos"
Locate 8,3
Print "Class"
Locate 8,30
Print "Crass"
Locate 9,3
Print "Tragedy"
Locate 9,30
Print "Hilarity"
Locate 10,3
Print "Open"
Locate 10,30
Print "Secretive"

Color RGB(0, 0, 255), RGB(000, 000, 000)
Locate 11,3
Print "Agoraphobic"
Locate 11,30
Print "Claustrophobic"
Locate 12,3
Print "Wholistic"
Locate 12,30
Print "Detail-Oriented"
Locate 13,3
Print "Generalist"
Locate 13,30
Print "Specialist"
Locate 14,3
Print "Focused"
Locate 14,30
Print "Scatterbrained"
Locate 15,3
Print "Passive"
Locate 15,30
Print "Aggressive"
Locate 16,3
Print "Tradition"
Locate 16,30
Print "Innovation"
Locate 17,3
Print "Diligent"
Locate 17,30
Print "Lazy"

Color RGB(255, 255, 255), RGB(000, 000, 000)
Locate 19,3
Print "Theatrics"
Locate 20,3
Print "Perception"
Locate 21,3
Print "Empathy"
Locate 22,3
Print "Manipulation"
Locate 23,3
Print "Directness"
Locate 24,3
Print "Knowledge"
Locate 25,3
Print "Wit"
Locate 26,3
Print "Stability"
Locate 27,3
Print "Sex drive"
Locate 28,3
Print "Tidiness"


end sub

'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------

Sub DetectClick()

WHILE buttons and 1 
    sleep 100
    res = GetMouse (mousex, mousey, , buttons)
    If res <> 0 Then exit while'' Failure  
    LeftClickCounter = LeftClickCounter+1
    wend

WHILE buttons and 2 
    sleep 100
    res = GetMouse (mousex, mousey, , buttons)
    If res <> 0 Then exit while'' Failure  
    RightClickCounter = RightClickCounter+1
    wend

if LeftClickCounter <> 0 then LeftClick = LeftClick + 1
if RightClickCounter <> 0 then RightClick = RightClick + 1

LeftClickCounter = 0
RightClickCounter = 0

    End Sub

'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------

Sub CreateNumber()

Randomize
a = Int(Rnd * 3) - 1
Randomize
b = Int(Rnd * 3) - 1
Randomize
c = Int(Rnd * 3) - 1
Randomize
d = Int(Rnd * 3) - 1

e = a+b+c+d

end sub

'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------

Sub PrintBar()
'Background of Bar
Color RGB(000, 000, 000), RGB(255, 255, 255)
Line (BarX+1, BarY+1)- (BarX+102, BarY+13), ,BF
'Little Boxes : go back and assign colors based on ifs
if f<-3 then Color RGB(255, 0, 0), RGB(255, 0, 0)
if f>-4 then Color RGB(128, 128, 128), RGB(128, 128, 128)
Line (BarX+3, BarY+3) - (BarX+10, BarY+11), ,BF
if f<-2 then Color RGB(255, 128, 0), RGB(255, 128, 0)
if f>-3 then Color RGB(128, 128, 128), RGB(128, 128, 128)
Line (BarX+13, BarY+3) - (BarX+20, BarY+11), ,BF
if f<-1 then Color RGB(255, 255, 0), RGB(255, 255, 0)
if f>-2 then Color RGB(128, 128, 128), RGB(128, 128, 128)
Line (BarX+23, BarY+3) - (BarX+30, BarY+11), ,BF
if f<0 then Color RGB(128, 255, 0), RGB(128, 255, 0)
if f>-1 then Color RGB(128, 128, 128), RGB(128, 128, 128)
Line (BarX+33, BarY+3) - (BarX+40, BarY+11), ,BF
Color RGB(0, 255, 128), RGB(0, 255, 128)
Line (BarX+43, BarY+3) - (BarX+60, BarY+11), ,BF
if f>0 then Color RGB(128, 255, 0), RGB(128, 255, 0)
if f<1 then Color RGB(128, 128, 128), RGB(128, 128, 128)
Line (BarX+63, BarY+3) - (BarX+70, BarY+11), ,BF
if f>1 then Color RGB(255, 255, 0), RGB(255, 255, 0)
if f<2 then Color RGB(128, 128, 128), RGB(128, 128, 128)
Line (BarX+73, BarY+3) - (BarX+80, BarY+11), ,BF
if f>2 then Color RGB(255, 128, 0), RGB(255, 128, 0)
if f<3 then Color RGB(128, 128, 128), RGB(128, 128, 128)
Line (BarX+83, BarY+3) - (BarX+90, BarY+11), ,BF
if f>3 then Color RGB(255, 0, 0), RGB(255, 0, 0)
if f<4 then Color RGB(128, 128, 128), RGB(128, 128, 128)
Line (BarX+93, BarY+3) - (BarX+100, BarY+11), ,BF


end sub

'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------

sub MakeNewCharacter()
'make actual variables for all these so you can track them

'Intuitive/Analytical
CreateNumber()
f=e
BarX = 120
BarY = 48
PrintBar()
'intro/extro version
CreateNumber()
f=e
BarX = 120
BarY = 64
PrintBar()
'Concreteness / Abstractness
CreateNumber()
f=e
BarX = 120
BarY = 80
PrintBar()
'Law/Chaos
CreateNumber()
f=e
BarX = 120
BarY = 96
PrintBar()
'Class/crass
CreateNumber()
f=e
BarX = 120
BarY = 112
PrintBar()
'Tragedy/Hilarity
CreateNumber()
f=e
BarX = 120
BarY = 128
PrintBar()
'Open/secretive
CreateNumber()
f=e
BarX = 120
BarY = 144
PrintBar()
'agoraphobic/claustrophobic
CreateNumber()
f=e
BarX = 120
BarY = 160
PrintBar()
'wholistic/detail-oriented
CreateNumber()
f=e
BarX = 120
BarY = 176
PrintBar()
'generalist/specialist
CreateNumber()
f=e
BarX = 120
BarY = 192
PrintBar()
'focused/scatterbrained
CreateNumber()
f=e
BarX = 120
BarY = 208
PrintBar()
'passive/aggressive
CreateNumber()
f=e
BarX = 120
BarY = 224
PrintBar()
'tradition/innovation
CreateNumber()
f=e
BarX = 120
BarY = 240
PrintBar()
'diligent/lazy
CreateNumber()
f=e
BarX = 120
BarY = 256
PrintBar()


'Theatrics
CreateNumber()
f=e
BarX = 120
BarY = 288
PrintBar()
'Perception
CreateNumber()
f=e
BarX = 120
BarY = 304
PrintBar()
'Empathy
CreateNumber()
f=e
BarX = 120
BarY = 320
PrintBar()
'Manipulation
CreateNumber()
f=e
BarX = 120
BarY = 336
PrintBar()
'Directness
CreateNumber()
f=e
BarX = 120
BarY = 352
PrintBar()
'Knowledge
CreateNumber()
f=e
BarX = 120
BarY = 368
PrintBar()
'Wit
CreateNumber()
f=e
BarX = 120
BarY = 384
PrintBar()
'Stability
CreateNumber()
f=e
BarX = 120
BarY = 400
PrintBar()
'Sex drive
CreateNumber()
f=e
BarX = 120
BarY = 416
PrintBar()
'Tidiness
CreateNumber()
f=e
BarX = 120
BarY = 432
PrintBar()

GetMood()

end sub


'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------

Sub MoodName()
Randomize
a = Int(Rnd * 101) + 1
if a = 1 then MoodName1 = "affectionate"
if a = 2 then MoodName1 = "aggressive"
if a = 3 then MoodName1 = "agitated"
if a = 4 then MoodName1 = "ambitious"
if a = 5 then MoodName1 = "angry"
if a = 6 then MoodName1 = "annoyed"
if a = 7 then MoodName1 = "antisocial"
if a = 8 then MoodName1 = "assertive"
if a = 9 then MoodName1 = "bored"
if a = 10 then MoodName1 = "close"
if a = 11 then MoodName1 = "confident"
if a = 12 then MoodName1 = "confused"
if a = 13 then MoodName1 = "contemplative"
if a = 14 then MoodName1 = "contented"
if a = 15 then MoodName1 = "courageous"
if a = 16 then MoodName1 = "creative"
if a = 17 then MoodName1 = "cruel"
if a = 18 then MoodName1 = "cuddly"
if a = 19 then MoodName1 = "dependant"
if a = 20 then MoodName1 = "despairing"
if a = 21 then MoodName1 = "disoriented"
if a = 22 then MoodName1 = "dull"
if a = 23 then MoodName1 = "earnest"
if a = 24 then MoodName1 = "enthusiastic"
if a = 25 then MoodName1 = "envious"
if a = 26 then MoodName1 = "evasive"
if a = 27 then MoodName1 = "excited"
if a = 28 then MoodName1 = "fascinated"
if a = 29 then MoodName1 = "fearful"
if a = 30 then MoodName1 = "festive"
if a = 31 then MoodName1 = "focused"
if a = 32 then MoodName1 = "friendly"
if a = 33 then MoodName1 = "frightened"
if a = 34 then MoodName1 = "fuming"
if a = 35 then MoodName1 = "furious"
if a = 36 then MoodName1 = "grateful"
if a = 37 then MoodName1 = "happy"
if a = 38 then MoodName1 = "hateful"
if a = 39 then MoodName1 = "helpless"
if a = 40 then MoodName1 = "hesitant"
if a = 41 then MoodName1 = "hopeless"
if a = 42 then MoodName1 = "hostile"
if a = 43 then MoodName1 = "humble"
if a = 44 then MoodName1 = "humiliated"
if a = 45 then MoodName1 = "impulsive"
if a = 46 then MoodName1 = "indignant"
if a = 47 then MoodName1 = "inquisitive"
if a = 48 then MoodName1 = "inspired"
if a = 49 then MoodName1 = "intent"
if a = 50 then MoodName1 = "intrigued"
if a = 51 then MoodName1 = "irate"
if a = 52 then MoodName1 = "jealous"
if a = 53 then MoodName1 = "joyous"
if a = 54 then MoodName1 = "jubilant"
if a = 55 then MoodName1 = "lighthearted"
if a = 56 then MoodName1 = "loving"
if a = 57 then MoodName1 = "low"
if a = 58 then MoodName1 = "loyal"
if a = 59 then MoodName1 = "mean-spirited"
if a = 60 then MoodName1 = "melancholy"
if a = 61 then MoodName1 = "miserable"
if a = 62 then MoodName1 = "moody"
if a = 63 then MoodName1 = "nervous"
if a = 64 then MoodName1 = "offended"
if a = 65 then MoodName1 = "optimistic"
if a = 66 then MoodName1 = "peaceful"
if a = 67 then MoodName1 = "pessimistic"
if a = 68 then MoodName1 = "petrified"
if a = 69 then MoodName1 = "playful"
if a = 70 then MoodName1 = "pleased"
if a = 71 then MoodName1 = "powerless"
if a = 72 then MoodName1 = "preoccupied"
if a = 73 then MoodName1 = "provoked"
if a = 74 then MoodName1 = "puzzled"
if a = 75 then MoodName1 = "relaxed"
if a = 76 then MoodName1 = "sad"
if a = 77 then MoodName1 = "satisfied"
if a = 78 then MoodName1 = "scared"
if a = 79 then MoodName1 = "serene"
if a = 80 then MoodName1 = "skeptical"
if a = 81 then MoodName1 = "sociable"
if a = 82 then MoodName1 = "social"
if a = 83 then MoodName1 = "somber"
if a = 84 then MoodName1 = "stubborn"
if a = 85 then MoodName1 = "sulky"
if a = 86 then MoodName1 = "suspicious"
if a = 87 then MoodName1 = "terrified"
if a = 88 then MoodName1 = "threatened"
if a = 89 then MoodName1 = "thrilled"
if a = 90 then MoodName1 = "timid"
if a = 91 then MoodName1 = "torn"
if a = 92 then MoodName1 = "uncertain"
if a = 93 then MoodName1 = "uncomfortable"
if a = 94 then MoodName1 = "understandng"
if a = 95 then MoodName1 = "unfriendly"
if a = 96 then MoodName1 = "uninspired"
if a = 97 then MoodName1 = "warm"
if a = 98 then MoodName1 = "wavering"
if a = 99 then MoodName1 = "weak"
if a = 100 then MoodName1 = "withdrawn"
if a = 101 then MoodName1 = "worried"
end sub

'--------------------------------------------------------------------------
'--------------------------------------------------------------------------
'--------------------------------------------------------------------------

sub GetMood()

Randomize
a = Int(Rnd * 99) + 1
if a < 41 then
    MoodName()
    Mood=MoodName1
    end if
if a > 40 and a < 45 then
    MoodName()
    Mood= "extremely " + MoodName1
    end if
if a > 44 and a < 50 then
    MoodName()
    Mood= "incredibly " + MoodName1
    end if
if a > 49 and a < 55 then
    MoodName()
    Mood= "mildly " + MoodName1
    end if
if a > 54 and a < 60 then
    MoodName()
    Mood= "slightly " + MoodName1
    end if
if a > 59 and a < 65 then
    MoodName()
    Mood= "somewhat " + MoodName1
    end if
if a > 64 and a < 70 then
    MoodName()
    Mood= "vaguely " + MoodName1
    end if
if a > 69 and a < 75 then
    MoodName()
    Mood= "very " + MoodName1
    end if
if a > 74 and a < 80 then
    MoodName()
    MoodName2=MoodName1
    MoodName()
    Mood=MoodName1 + " and " + MoodName2
    end if
if a > 79 and a < 85 then
    MoodName()
    MoodName2=MoodName1
    MoodName()
    Mood=MoodName1 + " on the surface, but " + MoodName2 + " underneath"
    end if
if a > 84 and a < 90 then
    MoodName()
    MoodName2=MoodName1
    MoodName()
    Mood=MoodName1 + " - which unconsciously conceals being " + MoodName2
    end if
if a > 89 and a < 95 then
    MoodName()
    MoodName2=MoodName1 + " - which deliberately conceals being " + MoodName2
    MoodName()
    Mood=MoodName1
    end if
if a > 94 and a < 100 then
    MoodName()
    MoodName2=MoodName1 + ", but many mistake it for being " + MoodName2
    MoodName()
    Mood=MoodName1
    end if

end sub