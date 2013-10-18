# 解决的问题
JSON作为一种数据格式，流行程度极高。iOS5之后直接支持了JSON数据操作，使用NSDictionary进行表示。一个明显的问题是，通常使用的JSON都是具有一定结构的，但dictionary仅支持key-value方式存取，key作为字符串，直接导致hardcode很多magic string。  
把JSON map到自定义Object，当前已有一些库[RestKit](https://github.com/RestKit/RestKit/blob/master/Docs/Object%20Mapping.md)。转换是很简单的，但没有碰到简化工作量的工具。  
XData是基于nodejs的一个工具，用于帮你自动完成JSON、XObject之间的相互转换。
# 如何使用
如上所述：大多数JSON是有固定的结构的（这是由于产生JSON数据的，通常是一些高级语言，通过反射之类的将对象转成了JSON）。使用XData需要做的第一件事是在**types.schema**里定义你的结构化对象。  
完成定义后，执行

	$ node data.gen.js

工具会自动生成对象，直接引入XData.h即可使用。
	
如何使用nodejs，请参考[http://nodejs.org](http://nodejs.org)。
# 支持的数据类型
	int, float, double, long, bool, XObject, XObject[]
	
	

