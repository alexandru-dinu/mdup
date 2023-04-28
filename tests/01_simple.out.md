# Hello, world

Let's include the python script:
<!-- MDUP:BEG (INCLUDE:./01.py) -->
```py
#!/usr/bin/env python3
import sys

print(f"Hello from {__file__}")
print(sys.version_info)
```
<!-- MDUP:END -->

Now let's run it:
<!-- MDUP:BEG (RUN:./01.py) -->
```
Hello from /home/alex/workspace/git/mdup.git/tests/01.py
sys.version_info(major=3, minor=10, micro=10, releaselevel='final', serial=0)
```
<!-- MDUP:END -->

---

Now let's include the bash script:
<!-- MDUP:BEG (INCLUDE:./02.sh) -->
```sh
#!/usr/bin/env bash

whoami
```
<!-- MDUP:END -->

And run it:
<!-- MDUP:BEG (RUN:./02.sh) -->
```
alex
```
<!-- MDUP:END -->