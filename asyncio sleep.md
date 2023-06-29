

Created at: 2023:03:19 17:36

Tags: [[Python]] #   #
__ 

##

``` python 

import asyncio
import itertools
async def spin(msg: str) -> None: 
	for char in itertools.cycle(r'\|/-'):
		status = f'\r{char} {msg}'
		print(status, flush=True, end='')
		try:
			await asyncio.sleep(.1) 
			except asyncio.CancelledError: 
		break
	blanks = ' ' * len(status)
	print(f'\r{blanks}\r', end='')
async def slow() -> int:
	await asyncio.sleep(3) 
	return 42

```

__

### Links

- [[]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]