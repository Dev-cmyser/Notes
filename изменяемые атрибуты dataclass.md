

Created at: 2023:02:22 14:29

Tags: [[Python]] #   #
__ 

##

``` python 
# Делай так для изменяемых аргументов
# иначе у каждого экземпляра класса будет одно и тоже значение!
@dataclass
class ClubMember:
	name: str
	guests: list = field(default_factory=list)
	athlete: bool = field(default=False, repr=False)


# неправильный пример!
@dataclass
class ClubMember:
	guests: list = []

n = ClusMember()
v = ClusMember()
n.guests.append('ad')
n.guests.append('as') #!!!!!!!!!! разные экземпляры класса!
v.guests #!!!!!!!!!!
>>> ['ad', 'as']


```

__

### Links

- [[dataclass]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]