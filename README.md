# awvs-engine
awvs的engine dockerfile

use:
```
  docker build -t awvs/engine .
  docker run -d -p 3443:3443 awvs/engine
 ```
 访问 https://ip:3443 填入对应的y信息  第一个节点名字 第二个本机https://ip:3443 第三个主节点https://ip:3443  把SSL勾上 注册
