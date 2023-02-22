//suggested memory and sample rate. If the audio driver being used has a different sample rate, change appropriately.

s.options.memSize = 8192 * 200;
s.options.sampleRate = 48000;
//might need to be: s.options.sampleRate = 44100;

~files = (
	\currSet : "",
	\leaveOneSet: "",
	\leaveTwoSet: "",
    \transferSet : "",
);
~inst = WavesetTransformerPlayer(20, ~files,0, 10);


