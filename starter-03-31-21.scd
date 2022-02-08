~moves.returnCurrSet();

~moves.go(5000).play;
~moves.startFlop();
~moves.ensound(5,5.25);

~moves.startFlop();
~moves.silence;

~moves.longSwap(30, 90, {rrand(0.2,3)});
~moves.longSwap(50, 50, 5);
~moves.waveset.shouldLongSwap = false;

~moves.multiLongSwap(5, 200, 5);
~moves.waveset.shouldMultiLongSwap = false;

~moves.repeatLongSwap(10, 40, 5);
~moves.waveset.shouldRepeatSwap = false;

~moves.waveset.repeats = {rrand(1,3)};
~moves.waveset.repeats = {1};
~moves.waveset.repeats.value();

~moves.waveset.baseSpeed = {rrand(5, 18.25)};
~moves.waveset.baseSpeed = {22};
~moves.waveset.baseSpeed.value();

~moves.waveset.waveSetAmount = {rrand(10,40)};
~moves.waveset.waveSetAmount = {90};
~moves.waveset.waveSetAmount.value();

~moves.waveset.multiplier = {5};
~moves.waveset.multiplier = {30.25};
~moves.waveset.multiplier.value();

~moves.waveset.shouldSwap = true;
~moves.waveset.shouldSwap = false;

~moves.waveset.distance = {rrand(0.001,0.028)};
~moves.waveset.distance = {0.00};
~moves.waveset.distance.value();

~moves.customPan(500,500,-1);
~moves.customPan(10,10,-1);
~moves.customPan(2,5,0);
~moves.subSets(50, 50);
~moves.waveset.shouldSub = false;

~moves.waveset.useCurrBuf = true;
~moves.waveset.useCurrBuf = false;
~moves.waveset.shouldSub = false;
~moves.waveset.waves.showKeys
~moves.changeSubWave('skwagSaw');
~moves.waveset.waves.showKeys();
~moves.waveset.randomWave();
~moves.waveset.subBuf.plot

~moves.moduloSpeedChange(2, {4},{0.9});
~moves.moduloSpeedChange(4, {rrand(1,5)},{rrand(0.04,0.35)});
~moves.waveset.speedChangeModulo = {~moves.waveset.currSet.xings.size*2}

~moves.speedSwap(2, 2);
~moves.speedSwap(4, {rrand(0.7, 2.0)});
~moves.waveset.speedSwapModulo = {~moves.waveset.currSet.xings.size*2};

~moves.waveset.resetInst();
~moves.waveset.modulateStart();
~moves.waveset.modulateSpeed();
~moves.waveset.moduleSpeedPlusStart();
~moves.waveset.speed2 = ~moves.waveset.baseSpeed*2.5;
~moves.waveset.speed2 = 20.5;
~moves.waveset.startAmt = 30;

~moves.customPhrase(0.001, 0.01, 900, 900, 0.2);
~moves.waveset.breakAmount = {rrand(0.001, 0.04)};
~moves.breakBottom = 20;
~moves.breakTop = 20;
~moves.waveset.breakAmount = {rrand(0.2, 0.2)};
~moves.waveset.distance = {0.002};

~moves.waveset.breakAmount.value
~moves.waveset.decBreak = true;
~moves.waveset.decBreak = false;
~moves.ensound(2,2);


~moves.getRhythm();
~moves.slowStrong();

~moves.playSeries(10,0.01);
~moves.shouldScrambleSeries = true;
~moves.shouldScrambleSeries = false;
~moves.shouldPlaySeries = false;

~moves.playMode(8,0.02);
~moves.shouldPlayMode = true;
~moves.shouldSwitchMode = true;

~moves.speedRandomDirect(8, 7, 5, 12, 1);
~moves.contSpeedDirectBreak = false;

~moves.speedRandom(1,7,6,14);
~moves.contSpeedRandomBreak = false;

~moves.multiplierRandomDirect(0.5, 2, 0.9, 6.0, 1);
~moves.contMultiplierDirectBreak = false;

~moves.multiplierRandom(0.01, 2.2, 0.9, 4);
~moves.multiplierRandom(0.2,1,2,10);
~moves.contMultiplierRandomBreak = false;

~moves.fadeOut();

