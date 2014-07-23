Finally it is worked!

For this one there are few things u need prepare
-U need a ARM virtual machine, which can only be initiated with QEMU
-now then u need a compiler, do the following 1st
	-sudo apt-get update
	-sudo apt-get install build-essential
-Now then use this test.s file and compile like normal gcc
	-gcc -o test test.s

Now the ./test should print out "Hello". Means the ARM assembly is
successfully compiled. Enjoy!
