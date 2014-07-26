for given the case to allocate array of size 100

//-------c code
int a[100]

//-------assembly code
.data

.balign 4
a: .skip 400

we allocate 400 as each int integer is 4 byte, with each 32 bit wide



