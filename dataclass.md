

Created at: 2023:02:21 13:18

Tags: [[Python]] #   #
__ 

##
Если frozen=True, то класс возбудит исключение
при попытке присвоить какому-либо полю значение после инициализации
экземпляра
``` python 

#2 такой же как NamedTuple №2
from dataclasses import dataclass
@dataclass(frozen=True)
class Coordinate:
	lat: float
	lon: float
	def __str__(self):
		ns = 'N' if self.lat >= 0 else 'S'
		we = 'E' if self.lon >= 0 else 'W'
		return f'{abs(self.lat):.1f}°{ns}, {abs(self.lon):.1f}°{we}'
# 

from dataclasses import dataclass
@dataclass
class DemoDataClass:
	a: int 
	b: float = 1.1 
	c = 'spam'

```

__

### Links

- [[NamedTuple]]
- [[изменяемые атрибуты dataclass]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]