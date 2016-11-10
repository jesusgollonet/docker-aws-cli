# Docker AWS cli



## Usage

Build the image, then in an empty directory in your host computer, run to get into the machine

```
docker run -it -v $(pwd):/root jesusgollonet/aws-cli /bin/bash
```

It will mount the current directory as the home directory of the docker root user so your 
dotfile, including AWS config, bash history etc will be stored in your host computer.

