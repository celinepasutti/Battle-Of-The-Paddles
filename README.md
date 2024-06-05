# Battle of the Paddles
A game inspired by ATARI's classic "Pong" utilizing an array list of abstract classes and encapsulated object creation.
> NOTE: This program will not function unless the display is in a LANDSCAPE orientation, and is programmed to block PORTRAIT play automatically.

# HOW TO PLAY:
## GAME FUNCTION:
Paddle movement is dependent on the game mode selected from the menu screen as outlined below in MENU.
The pong ball moves in a random direction as the game begins, and will trigger a "net explosion" of "fireworks" if it makes contact with one side of the screen. The scoreboard of the player that "scored" on the other player will be updated by one and a pause screen will appear prompting the player(s) to press _SPACE_ to start a new round of the game.
> NOTE: A player with a 3-point advantage will have their paddle shrunken and slowed by a small amount.
## BUTTONS
### QUIT
Pressing the "X" button will terminate the program.
> NOTE: pressing the _ESC_ key will also terminate the program.
### NEW GAME
Pressing the "NEW GAME" button will result in the player-selection menu reappearing and wiping score values while returning the ball and paddles to their initial positions.
## MENU - APPEARS AT GAME START
Starting the program for the first time or pressing the "NEW GAME" button will offer the player a menu to choose between two game modes.
### SINGLE-PLAYER MODE
Choosing a single-player game mode will have the player control the LEFT paddle utilizing keys _W_ and _S_ while playing against a computer-controlled RIGHT paddle.
> NOTE: computer-controlled paddle movement; There is a "buffer" automatically assigned to the paddle when the ball is on the same side as the paddle, however, it will move to the exact position of the ball as it approaches the computer-controlled paddle. This may result in a "jerking" motion as the ball gets closer, and its purpose is to leave the player with a sense of excitement that the computer may miss the ball. Additionally, the computer will stop the paddle as the ball bounces away and return to a "neutral" position when it is on the player's half of the screen.
### TWO-PLAYER MODE
Choosing a two-player game mode will have two players control the LEFT and RIGHT paddles. Player ONE will utilize keys _W_ and _S_ to control the LEFT paddle while Player TWO will utilize arrow keys _UP_ and _DOWN_ to control the RIGHT paddle.
## EASTER EGGS
There are a small number of secret modes and functions triggered by key or mouse presses.
### SCREEN SAVER MODE - triggered by pressing _SPACE_ in the game mode selection menu.
Pressing _SPACE_ will prompt the computer to control both the LEFT and RIGHT paddles using the same behaviour as the computer-controlled RIGHT paddle in single-player mode.
### GOD MODE - triggered by pressing the _MOUSE_ within the bounds of the pong table area.
Pressing the _MOUSE_ within the bounds of the pong table area will move the pong ball to the position of where the mouse was pressed.
### PARTY MODE - triggered by pressing the key _P_ at any time.
Pressing the _P_ key will randomly change the colours of the ball, table, scoreboard, and paddles in one-second intervals while creating "confetti" that falls down the screen.
> NOTE: Party Mode can be toggled on and off at any time, however, doing so rapidly may cause the one-second interval of colour changing to not function properly.


