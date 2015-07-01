# Maven 创建 module 模板

模板结构
```
app/
├── src/
│   ├── main/
│   │   ├── assembly/
│   │   │   └── deploy.xml                                  打包发布模式包配置
│   │   ├── java/                                           Java 源码文件目录
│   │   ├── resources/
│   │   │   ├── assets/                                     公开静态资源存放目录
│   │   │   │   ├── css/
│   │   │   │   ├── fonts/
│   │   │   │   ├── img/
│   │   │   │   └── js/
│   │   │   ├── conf/                                       模块配置文件存放目录
│   │   │   │   ├── evolutions/                             SQL 脚本存放目录，子目录对应数据源名称
│   │   │   │   │   └── default/                            `default` 数据源脚本存放目录（db.default.url=...）
│   │   │   │   ├── messages/                               I18N 配置文件存放目录，文件必须采用UTF8编码
│   │   │   │   │   ├── message.properties                  I18N 默认配置文件，UTF8编码
│   │   │   │   │   ├── message_en.properties               I18N 英文配置文件，UTF8编码
│   │   │   │   │   └── message_zh_CN.properties            I18N 中文简体配置文件，UTF8编码
│   │   │   │   └── module.conf                             模块配置文件
│   │   │   └── views/                                      模板存放目录
│   │   │       └── index.httl.html                         创建模块引导页面模板
│   │   └── scripts/
│   │       ├── ameba.vmoptions                             发布模式下 JVM 配置文件
│   │       ├── append.bat                                  Windows 发布模式启动脚本所需文件
│   │       ├── shutdown.sh                                 Linux/Unix 发布模式结束脚本
│   │       ├── startup.bat                                 Windows 发布模式启动脚本
│   │       └── startup.sh                                  Linux/Unix 发布模式启动脚本
│   └── test/
│       ├── java/                                           Java 单元测试目录
│       │   └── ameba/
│       │       └── DevBootstrap.java                       用于快速引导DEV模式的 Java 代码
│       └── resources/
│           └── conf/                                       用于DEV模式启动的配置文件存放目录
│               ├── log/                                    log 配置文件目录，用于存放通过 APP ID logger 配置文件
│               │   └── log_off_fw.groovy                   通过 APP ID 调用的配置文件，关闭框架日志
│               ├── application.conf                        应用主配置文件
│               ├── application_trace.conf                  通过 APP ID 调用的配置文件，打开框架详细日志
│               ├── ehcache.xml                             EhCache 配置文件，使用 EhCahe 缓存模块时才需要
│               └── security.ini                            Shiro 配置文件，使用 Shiro 模块时才需要
├── target/
│   ├── classes/                                            编译的 class
│   ├── generated-classes/
│   │   └── ameba/
│   │       └── enhanced-cache/                             框架生成的增强后的代码缓存
│   └── generated-sources/
│       └── ameba/                                          框架生成的资源文件
│           └── conf/
│               └── evolutions/                             框架生成的 DDL
│                   └── default/                            `default` 数据源脚本存放目录（db.default.url=...）
│                       ├── create.sql                      创建数据表的 DDL
│                       └── drop.sql                        删除数据表的 DDL
├── LICENSE                                                 开源协议文件
├── pom.xml                                                 Maven 配置文件
└── README.md
```