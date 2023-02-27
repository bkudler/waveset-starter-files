i = ~inst.go(50000);
i.play;
~inst.ensound(0.35, 0.5);

~inst.fadeOut(3);

~inst.silence;

~inst.takeSnapshot();
~inst.showSnapshot();
~inst.setSnapshot();
~inst.norm();

~inst.longSwap(10, 90, {rrand(0.2,3)});
~inst.longSwap(10, 10, 5);
~inst.ramp(\longSwapLevel, 20, 30);
~inst.ramp(\longSwapNormLevel, 30, 200);
~inst.ramp(\speedSwapAmt, 30, 5);
~inst.waveset.shouldLongSwap = false;
~inst.waveset.shouldLongSwap = true;

~inst.multiLongSwap(4, 90, 3);
~inst.ramp(\multiLongSwapLevel, 20, 1);
~inst.ramp(\multiLongSwapNormLevel, 30, 80);
~inst.ramp(\multiSwapAmt, 5, 2);
~inst.waveset.shouldMultiLongSwap = false;
~inst.waveset.shouldMultiLongSwap = true;

~inst.repeatLongSwap(10, 100, 5);
~inst.ramp(\repeatSwapLevel, 1, 1);
~inst.ramp(\repeatSwapNormLevel, 45, 500);
~inst.ramp(\repeatSwapLev, 5, 0);
~inst.waveset.shouldRepeatSwap = false;
~inst.waveset.shouldRepeatSwap = true;

// good numbers are 0.1 to 40 (go higher at your own risk)
~inst.waveset.baseSpeed = {5};
~inst.ramp(\baseSpeed, 10, 10);
~inst.waveset.baseSpeed.value();

//don't go below zero, good numbers are 1 and the number of wavesets in the current set (though, much over 200 is boring)
~inst.waveset.waveSetAmount = {rrand(10,150)};
~inst.waveset.waveSetAmount = {30};
~inst.ramp(\waveSetAmount, 10, 200);
~inst.waveset.waveSetAmount.value();

// don't go below zero, good numbers are 1 to 500 (though 500 is quite high)
~inst.waveset.repeats = {10};
~inst.ramp(\repeats, 2, 1);
~inst.waveset.repeats.value();

// good numbers are 0.2 to 30
~inst.waveset.multiplier = {12.25};
~inst.ramp(\multiplier, 20, 2.75);
~inst.waveset.multiplier.value();

~inst.waveset.shouldSwap = true;
~inst.waveset.shouldSwap = false;

// good numbers are 0 (regular playback) to 0.5 (though 0.1 is probably the highest that makes any kind of cool sound)
~inst.waveset.distance = {0.1};
~inst.ramp(\distance, 20, 0.0);
~inst.waveset.distance.value();

// first two inputs should be between 0 and the number of wavesets in the current set
// last input has to be between -1 and 1
~inst.customPan(1,1,1);
~inst.ramp(\pan, 50, 0);
~inst.ramp(\panLevel, 20, 90);
~inst.ramp(\panNormLevel, 10, 2);

~inst.moduloSpeedChange(4, {5}, {0.09});
~inst.waveset.speedChangeModulo = {~sax.waveset.currSet.xings.size*2}

~inst.speedSwap(2, 0.85);
~inst.waveset.speedSwapModulo = {~sax.waveset.currSet.xings.size*2};

~inst.waveset.resetInst();
~inst.waveset.modulateStart();
~inst.waveset.modulateSpeed();
~inst.waveset.moduleSpeedPlusStart();
~inst.waveset.speed2 = 10.85;
~inst.ramp(\speed2, 30, 9.25);
~inst.waveset.startModFreq = 1.55;
~inst.ramp(\startModFreq, 30, 0.5);
~inst.waveset.startAmt = 8.25;
~inst.ramp(\startAmt, 40, 1.25);

// the first two arguments determine the amount of silence between ending the current waveset chunk and starting the next chunk. The actual wait time will be a random value between the first argument and the second.
// Good numbers are between 0.001 and 5.0, go higher for longggg breaks.
// The third and fourth arguments determine the length of the waveset chunks. The actual length of the waveset chunk will be a random number between the third argument and the fourth argument. Good numbers are 5 and the number of wavesets in the current set.
// The last argument is the amount of time to wait between changing the length of the waveset series
// Good numbers are between 0.01 and 10
~inst.customPhrase(0.001, 0.01, 20, 120, 0.1);
~inst.breakBottom = 10;
~inst.breakTop = 50;
~inst.waveset.breakAmount = {rrand(0.1, 3.25)};
~inst.waveset.breakAmount = {0.5};

~inst.ramp(\breakBottom, 30, 35);
~inst.ramp(\breakTop, 30, 90);
~inst.ramp(\breakAmount, 10, 0.1);

~inst.waveset.decBreak = true;
~inst.waveset.decBreak = false;

~inst.getRhythm();
~inst.slowStrong();

~inst.playSeries(10,0.01);
~inst.shouldScrambleSeries = true;
~inst.shouldScrambleSeries = false;
~inst.shouldPlaySeries = false;
~inst.shouldPlaySeries = true;

~inst.speedRandomDirect(8, 9.0, 9.0, 15.0, 1);
~inst.contSpeedDirectBreak = false;

~inst.speedRandom(1,7,6,14);
~inst.contSpeedRandomBreak = false;

~inst.multiplierRandomDirect(0.1, 2, 0.9, 6.0, 1);
~inst.contMultiplierDirectBreak = false;

~inst.multiplierRandom(0.01, 2.2, 0.9, 4);
~inst.multiplierRandom(0.2,1,2,10);
~inst.contMultiplierRandomBreak = false;
