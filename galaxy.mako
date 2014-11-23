var Seq = require("biojs-vis-sequence");
var Fasta = require("biojs-io-fasta").parse;

Fasta.read(url, function(seqs){
	// this component can only display one sequence
	var seq  = seqs[0];
    var mySequence = new Seq({
      sequence : seq.seq,
      target : galaxyDiv.id,
      format : 'CODATA',
      formatOptions : {
        title:false,
        footer:false
      },
      id : 'P918283'
    });
});
