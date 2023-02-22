(
~test = {~inst.waveset.ws_scout.set_actions( (
	\wavesetEnd:[
		{arg val;}
	],
	\wavesetGroupStart: [{
		{"GROUP START".postln;}

	}],
	\wavesetGroupEnd: [
		{"GROUP END".postln;}
	],
	\rampEnds:[
		{"RAMP END".postln;},

	],
	\wavesetLoopEnd:[
		{"WAVESET LOOP END".postln},
	],
	\wavesetLoopsFinshed:[{"ALL DONE".postln;}],
)
)};
)
