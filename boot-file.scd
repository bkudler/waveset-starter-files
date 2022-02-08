//allocate more memory for SuperCollider
s.options.memSize = 8192 * 10;
//suggested sample rate
s.options.sampleRate = 48000;


// IF YOU WANT TO ROUTE YOUR AUDIO SOMEWHERE ELSE ON YOUR MACHINE
 o = Server.default.options;
 o.device = "BlackHole 16ch";
// o.device = "Universal Audio Thunderbolt"
 o.numOutputBusChannels = 16;

//drag and drop files paths here
~files = (
	\currSet : "",
    \leaveOneSet : "",
    \leaveTwoSet : "",
    \transferSetOne : "",
	\transferSetTwo : ""
);

~moves = WavesetTransformerPlayer(20,~files);

~moves.changeLeaveOneSet(Wavesets.from("/Samples/use-one.aiff"));
~moves.returnLeaveOneSet();

~moves.changeLeaveTwoSet(Wavesets.from(~files.leaveOneSet));
~moves.returnLeaveTwoSet();

~moves.changeTransferSetOne(Wavesets.from(~files.transferSetOne));
~moves.returnTransferSetOne();

~moves.changeTransferSetTwo((Wavesets.from(~files.leaveOneSet));
~moves.returnTransferSetTwo();

~moves.changeCurrSet(Wavesets.from(""));

~moves.waveset.currSet.name
~moves.returnCurrSet();

