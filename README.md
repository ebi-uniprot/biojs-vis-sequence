# The Sequence Component #

For a working example, please go to [JSBin](http://jsbin.com/jixehituxopa/1/edit)

## Instantiation ##
1. Get the main JS file from [npm](https://www.npmjs.com/package/biojs-vis-sequence) 
2. Remember to add the required JS files, i.e., the Sequence Component, jQuery, and jQuery browser plugin. Something like: 
```
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
    jQuery = $;
    </script>
    <script src="../js/biojs-vis-sequence.js"></script>
    <script src="../js/jquery-browser-plugin.js"></script>
```
3. Create a div tag which holds an unique identifier.
```
    <body>
    ...
    	<div id="YourOwnDivId" />
    ...
    </body>
```
4. Create a code snippet within a script tag and create and instance of biojs-vis-sequence.
```
var Sequence = require("biojs-vis-sequence");
window.onload = function() {
var theSequence = "METLCQRLNVCQDKILTHYENDSTDLRDHIDYWKHMRLECAIYYKAREMGFKHINHQVVPTLAVSKNKALQAIELQLTLETIYNSQYSNEKWTLQDVSLEVYLTAPTGCIKKHGYTVEVQFDGDICNTMHYTNWTHIYICEEAojs SVTVVEGQVDYYGLYYVHEGIRTYFVQFKDDAEKYSKNKVWEVHAGGQVILCPTSVFSSNEVSSPEIIRQHLANHPAATHTKAVALGTEETQTTIQRPRSEPDTGNPCHTTKLLHRDSVDSAPILTAFNSSHKGRINCNSNTTPIVHLKGDANTLKCLRYRFKKHCTLYTAVSSTWHWTGHNVKHKSAIVTLTYDSEWQRDQFLSQVKIPKTITVSTGFMSI";
var mySequence = new Sequence({
        sequence : theSequence,
        target : "YourOwnDivId",
        format : 'CODATA',
        id : 'P918283',
        annotations: [
       		{ 
				name:"CATH",
            	color:"#F0F020",
            	html: "Using color code #F0F020 ",
            	regions: [{start: 122, end: 135}]
          	},{ 
				name:"TEST",
         		html:"<br> Example of <b>HTML</b>",
         		color:"green",
         		regions: [
           			{start: 285, end: 292},
           			{start: 293, end: 314, color: "#2E4988"}
				]
       		}
     	],
     	highlights : [
        	{ start:30, end:42, color:"white", background:"green", id:"spin1" },
	        { start:139, end:140 },
    	    { start:631, end:633, color:"white", background:"blue" }
     	]
	});
};
```

## Options ##

### Required Parameters ###
- target | {string}

Identifier of the DIV tag where the component should be displayed.

- sequence | {string}

The sequence to be displayed.

### Optional Parameters ###
- id | {string}

Sequence identifier if apply.

- format | {string}

The display format for the sequence representation.
Default: "FASTA"

- highlights | {Object[]}

For highlighting multiple regions. 

Syntax
```
[
 // Highlight aminoacids from 'start' to 'end' of the current strand using the specified 'color' (optional) and 'background' (optional).
 { start: <startVal1>, end: <endVal1> [, id:<idVal1>] [, color: <HTMLColor>] [, background: <HTMLColor>]},
 //
 // Any others highlights
 ..., 
 //
 { start: <startValN>, end: <endValN> [, id:<idValN>] [, color: <HTMLColor>] [, background: <HTMLColor>]}
]
```

Example
```
highlights : [
        { start:30, end:42, color:"white", background:"green", id:"spin1" },
        { start:139, end:140 },
        { start:631, end:633, color:"white", background:"blue" }
    ]
```
