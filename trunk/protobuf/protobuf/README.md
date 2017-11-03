# WolleyServer
Proto-java使用方法：
由于protoc版本不同，所以提供两个批处理生成方式，可任选其一使用
1. buildproto-2.6.0.bat                                           [version=] 2.6.0
2. buildproto-3.4.0-windows-x86_64.bat            [version=] 3.4.0

1 把需要翻译的*.proto文件放进proto文件夹中
2 运行 buildproto.bat, 将重新生成所有proto文件为对应名称java文件
3 生成对应的  *.java文件会存放到protocs中并移动到工程指定目录下 ../../../WolleyServer/Network/Message-[version]