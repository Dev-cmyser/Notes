# sieve of eratosthenes

Created at: 2022:08:15 16:06

Tags: [[Python]]  [[Курс алгоритмы и структуры-данных]] 
__ 

#
 это алгоритм нахождения всех простых чисел до числа -n путем
 вычеркивания всех непростых от числа на входе до числа n
 берем 2 и зачеркиваем все остальные кратные 2(начиная с 2в степени 2 = 4) -> 4, 6 etc  до  n
 после берем следующее простое число -> 3
 и вычеркиваем уже каждое третье  начиная с 9 (3 в степени 2)
 это -> 9 12 1 18 21
  И так далее  до n
 
		  ![[Pasted image 20220815161317.png]]
		  
``` python 

n = 1423423
a = [True]*n
a[0]=a[1]=False

for i in range(2, n):
    if a[i]:
        for m in range(2*i,n,i):
            a[m] = False
# for i in range(n):
#     print(i, '--', 'simple' if a[i] else 'double')
print(a)
for i in range(n):
    if a[i]:
        print(i )

```

__

### Links
-[[]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]
- [[]]