#1 Alle Wörter die mit einen A anfangen und mit einem A aufhören
 grep '^A.*A$' /tmp/words

#2 Alle Wörter die zwei gleiche aufeinanderfolgende Buchstaben haben
grep -E '(.)(\1)' /tmp/words

#3 Nur Wörter welche die Buchstaben a, b und c enthalten 
grep -E 'a.b.c' /tmp/words
grep -E '[abc]+' /tmp/words

#4 Wie viele Wörter bestehen aus genau 17 Buchstaben 
grep -E '^[A-Za-z]{17}$' /tmp/words
grep -E '^\w{17}$Z' /tmp/words