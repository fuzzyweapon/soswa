---
toc: Playing the Game
summary: How to send commlink/text messages.
aliases:
- com
- commlink
- cl
- text
- Texting
- texts
---

## Messaging from the Web-Portal
There is a "Send Msg" button on any active scene in the web-portal. Messaging into a scene will send a message in-game, if the character is connected. Otherwise, it will just send a message into the scene.

`<name>=<message>` - Send a message to a person from the web-portal. If the recipient isn't already a participant in the scene, this will add them.

> Keep in mind that someone who's not logged in won't know they've been messaged in a scene unless they check! Be courteous!

## Commands
`com <name> [<name> <name>]=<message>` - Send a message to name(s).
`com <name> [<name> <name>]/<scene #>=<message>` - Send a message to name + log it in a scene. If the recipient isn't already a participant in the scene, this will add them.

`com [=]<message>` - Send a message to your last target + last scene.

`com/reply` - See who last messaged you.
`com/reply <message>` - Reply to the last message (including all recipients + scene, if there is one)

`com/newscene <name> [<name> <name>]=<message>` - Starts a new scene + sends a message to those names + the scene.

`com/color <color>` - Color the (MSG to <name>) prefix. Use ansi color format for this, ex: \%xh\%xr for red highlight, \%xh\%xg for green highlight.

> If you do not wish to receive coms (in general, or from a specific person), the `page/ignore <name>=<on/off>` and `page/dnd <on/off>` commands will block coms as well.
