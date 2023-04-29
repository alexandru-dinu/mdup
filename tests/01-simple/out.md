# Hello, world

Let's include the python script:
<!-- MDUP:BEG (SRC:./foo.py) -->
```py
#!/usr/bin/env python3

print(f"Hello from python")
import this
```
<!-- MDUP:END -->

Now let's run it:
<!-- MDUP:BEG (RUN:./foo.py) -->
```
Hello from python
The Zen of Python, by Tim Peters

Beautiful is better than ugly.
Explicit is better than implicit.
Simple is better than complex.
Complex is better than complicated.
Flat is better than nested.
Sparse is better than dense.
Readability counts.
Special cases aren't special enough to break the rules.
Although practicality beats purity.
Errors should never pass silently.
Unless explicitly silenced.
In the face of ambiguity, refuse the temptation to guess.
There should be one-- and preferably only one --obvious way to do it.
Although that way may not be obvious at first unless you're Dutch.
Now is better than never.
Although never is often better than *right* now.
If the implementation is hard to explain, it's a bad idea.
If the implementation is easy to explain, it may be a good idea.
Namespaces are one honking great idea -- let's do more of those!
```
<!-- MDUP:END -->

---

Now let's include the bash script:
<!-- MDUP:BEG (SRC:./bar.sh) -->
```sh
#!/usr/bin/env bash

type cd
```
<!-- MDUP:END -->

And run it:
<!-- MDUP:BEG (RUN:./bar.sh) -->
```
cd is a shell builtin
```
<!-- MDUP:END -->