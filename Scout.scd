(
~test = {~inst.waveset.ws_scout.set_actions( (
	\wavesetEnd:[
		{arg val;}
	],
	\wavesetGroupStart: [
		{"GROUP START".postln;},
        {Synth(\test_scout)}
	],
	\wavesetGroupEnd: [
		{"GROUP END".postln;}
	],
	\rampEnds:[
		{"RAMP END".postln;},
	],
	\wavesetLoopEnd:[
		{"WAVESET LOOP END".postln},
        {Synth(\test_scout)}
	],
	\wavesetLoopsFinshed:[{"ALL DONE".postln;}],
)
)}.value();
)

~inst.customPhrase(0.001, 0.01, 20, 120, 0.1);


(
SynthDef(\test_scout,{

    var env = EnvGen.ar(Env([0,1,0],[0.01,0.25]),doneAction:2);

    var in = SinOsc.ar*env;

    Out.ar(0,Pan2.ar(in));

}).add;
)