# 简介
This is the project which can be used for MicroClass, it`s just the SWC code.

这是微课项目中的一个子项目，调用ANE的SWC库文件的代码，仅作参考使用，完整的使用方式会稍后给出。

# 版本
我使用的开发环境都是最新的。

Apache Flex 4.14.0

Flash Player 16.0

Air 16.0

# 功能
在制作iOS的ANE的时候，会需要在Flash builder写一个类似的引导库文件，也就是SWC文件。
SWC文件链接了iOS层与Flex的应用层，其中包括事件的传递机制，编译完SWC文件之后，需要利用这个SWC文件来制作iOS的ANE文件。
这个版本的SWC库文件我主要是针对一个微课的项目进行了iOS层的功能拓展。

1）根据传递过来的视频路径（本地），调用iOS原生播放器（MPMovieplayerviewcontroller）进行视频的播放，其中会遇到一个移除播放器导致的Flex层动作无法响应的问题，已解决。

2）打开iOS的图册，筛选视频文件，并返回给Flex用户选择的视频的路径。

# 使用范例
项目还没上传，有时间整理。
