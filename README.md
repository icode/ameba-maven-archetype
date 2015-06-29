# Maven 创建 module 模板

模板结构

app/
├── src/
│   ├── main/
│   │   ├── assembly/
│   │   │   └── deploy.xml
│   │   ├── java/
│   │   ├── resources/
│   │   │   ├── assets/
│   │   │   │   ├── css/
│   │   │   │   ├── fonts/
│   │   │   │   ├── img/
│   │   │   │   └── js/
│   │   │   ├── conf/
│   │   │   │   ├── evolutions/
│   │   │   │   ├── messages/
│   │   │   │   │   ├── message.properties
│   │   │   │   │   ├── message_en.properties
│   │   │   │   │   └── message_zh_CN.properties
│   │   │   │   └── module.conf
│   │   │   └── views/
│   │   │       └── index.httl.html
│   │   └── scripts/
│   │       ├── ameba.vmoptions
│   │       ├── append.bat
│   │       ├── shutdown.sh
│   │       ├── startup.bat
│   │       └── startup.sh
│   └── test/
│       ├── java/
│       │   └── ameba/
│       │       └── DevBootstrap.java
│       └── resources/
│           └── conf/
│               ├── log/
│               │   └── log_off_fw.groovy
│               ├── application.conf
│               ├── application_trace.conf
│               ├── ehcache.xml
│               └── security.ini
├── LICENSE
├── pom.xml
└── README.md