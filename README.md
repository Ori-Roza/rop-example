# rop-example
example of ROP in x86 docker


```bash
docker run -ti --privileged --cap-add=SYS_PTRACE --security-opt seccomp=unconfined rop  /bin/bash
```


https://medium.com/bugbountywriteup/linking-the-pieces-a-journey-into-rop-chains-for-beginner-explorers-a9767d4c5149