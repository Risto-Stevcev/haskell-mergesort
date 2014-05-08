GHC = ghc

.PHONY:
default: Main

.PHONY:
test: TestMergeSort

Main:
	$(GHC) Main.hs

TestMergeSort:
	$(GHC) TestMergeSort.hs

.PHONY:
all: clean default test

.PHONY:
clean:
	rm -f *.o *.hi *.*~ TestMergeSort Main
