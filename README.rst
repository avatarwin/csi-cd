csi-cd
======

About
-----

Adds ``,cd`` and ``,pwd`` commands to the chicken scheme interactive repl (ie, csi).

That's it, that's all it does, but it kept annoying me having to specify long
paths to ``,l`` when I changed which directory I was working from. Maybe it'll
scratch the same itch with someone else.

Usage
-----

``,cd pathname`` to change current working directory

Note, this uses the posix change-directory function, so doesn't support ~ at this point.

``,pwd`` to display your current working directory
