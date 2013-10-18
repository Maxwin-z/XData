# iOS JSON Object Mapping Tool
This is a tool (based nodejs), generate JSON(NSDiction object) to customize object(XData).  
An easy way to manipulate json in Objective-C.

# How to use
Just declare your object structure in **types.schema**  
Run 
 
	$ node data.gen.js

More about node, see [http://nodejs.org](http://nodejs.org).

# How it works
data.gen.js will generate Class based XBaseData those declared in types.schema.  
XBaseData has encode/decode method convert NSDictionary to *XObjects* each other.  
More detail, see code plz.
	