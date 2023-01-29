a.out:
	gcc LetrasOla.c

clean:
	rm LetrasOla

test: a.out
	bash test.sh
