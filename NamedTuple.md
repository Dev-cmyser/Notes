

Created at: 2023:02:21 13:15

Tags: [[Python]] #   #
__ 

##

``` python 
#1 
Coordinate = typing.NamedTuple('Coordinate', lat=float, lon=float)

#2

from typing import NamedTuple
class Coordinate(NamedTuple):
	lat: float
	lon: float
	def __str__(self):
		ns = 'N' if self.lat >= 0 else 'S'
		we = 'E' if self.lon >= 0 else 'W'
		return f'{abs(self.lat):.1f}°{ns}, {abs(self.lon):.1f}°{we}'

# show case 
import typing
class DemoNTClass(typing.NamedTuple):
	a: int 
	b: float = 1.1 
	c = 'spam'
nt = DemoNTClass(2)
```
![[Pasted image 20230221134519.png]]


__


### Links

- [[dataclass]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]