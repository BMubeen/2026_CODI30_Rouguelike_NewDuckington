# Design Document

## Overview
It's a rogue-like game, there is an orgnization called New Duckington. It's beside a pond called Whispering Waters. The player is a Duck. All the ducks in the world travelled to Whispering Waters to form an alliance against the bears. The unorganized bears tried to attack, but failed miserably. One bear stood out, and formed a pact with a dragon and then massacred the ducks. You play as a duck that is after the dragon and bear duo in order to get vengeance.

## Concept
It's a text-based rogue-like RPG with a turn based combat system.

## Mechanics (Move/Text/Item)
- Randomly generated room structure each run
    - Starting room
    - Ending room (boss room)
    - Multiple room paths that connect
        - Looks almost like a branch
            - Branches out
            - Multiple paths may merge into one
            - @Weibo-student make ASCII representation
    - Always progresses forwards
    - When you finish a room, display ASCII of paths @Weibo-student
- Room types
    - Shop rooms
        - You can buy items like potions or weapons
        - ALL of the shops are run by the same duck in a bear costume
    - Enemy rooms
    - Event rooms
- Out of Combat
    - You choose which room to go to next/plan your route
    - You can switch out weapons/armor or whatever
- Combat structure
    - Turn based (in a loop)
        - No enemy intent displayed
        - Display player status (like health)
        - Calculate statuses for player
            - Examples: fire damage, weakness/strength duration
        - Player does action
            - Attack
                - Change enemy hp, check if they die
            - Use Item
                - Effects depends on item
            - Flee
                - Chance to escape combat
        - Calculate statuses for enemies
        - Enemies do actions
            - Random
                - Attack
                    - Do damage, check if player dies
                - Flee
        - Repeat
- 

## Story / Theme
There is an orgnization called New Duckington. It's beside a pond called Whispering Waters. The player is a Duck. All the ducks in the world travelled to Whispering Waters to form an alliance against the bears. The unorganized bears tried to attack, but failed miserably. One bear stood out, and formed a pact with a dragon and then massacred the ducks. You play as a duck that is after the dragon and bear duo in order to get vengeance. go more in-depth herer i guess