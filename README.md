## [中文文档](README.zh-CN.md)

# iOS JSON Object Mapping Tool
This is a tool (based nodejs), generate JSON(NSDiction object) to customize object(XObject).  
An easy way to manipulate json in Objective-C.

# How to use
Just declare your object structure in **types.schema**  
Run 
 
	$ node data.gen.js

More about node, see [http://nodejs.org](http://nodejs.org).

# Supported types
	int, float, double, long, bool, XObject, XObject[]

# How it works
data.gen.js will generate *XObject* based XBaseData those declared in types.schema.  
XBaseData has encode/decode method convert NSDictionary to *XObjects* each other.  
More detail, see code plz.
	
