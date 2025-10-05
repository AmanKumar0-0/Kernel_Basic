step1 - 1st we need to disaaemble the assembly by using nasm –	“nasm -f bin ./real_boot_test.asm -o ./real_boot_test.bin”
step2 - Then we need to run it in virtual environment by using qemu :	“qemu-system-x86_64 -hda ./real_boot_test.bin”
step3 - The qemu will run on port no. : 5900.
step4 - To view the running os we will use vncviewer :	“vncviewer localhost:5900”
<img width="1121" height="505" alt="image" src="https://github.com/user-attachments/assets/05320119-678f-47d1-acab-f967d754a78a" />
