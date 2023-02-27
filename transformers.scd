// good values are between 0.1 and 1.0 for the first argument, second and third should be between 0 and the number of wavesets in the current set
~inst.harmonizeSets({0.85}, 10,5);
~inst.ramp(\harmonizeLevel, 20, 10);
~inst.ramp(\harmonizeNormLevel, 10, 5000);
~inst.ramp(\harmLevel, 10, 0.75);
~inst.waveset.shouldHarmonize = false;

// arguments should be between 0 and the number of wavesets in the current set. Last argument is if there should be pause for the length of the waveset being deleted
~inst.deleteSets(1, 5,false);
~inst.ramp(\deleteLevel, 80, 50);
~inst.ramp(\deleteNormLevel, 60, 20);
~inst.randomDeleteSets(1, 5, false);
~inst.waveset.shouldDelete = false;
~inst.waveset.shouldRandomDelete = false;
~inst.waveset.shouldDeletePause = true;
~inst.waveset.shouldDeletePause = false;

// good numbers are usually 0.5 to 3, depending on the wavesets
~inst.shrinkSets(1.2);
~inst.ramp(\shrinkAmt, 30, 1.2);
~inst.waveset.shouldShrink = false;

// good numbers are 10 to 500, 500 will create basically noise
~inst.shuffleSets({30});
~inst.ramp(\shuffAmount, 20, 10);
~inst.waveset.shouldShuffle = false;

// good values are (1,0) to (1, number of wavesets in the current set)
~inst.reverseSets(10, 0);
~inst.ramp(\reverseLevel, 10, 20);
~inst.ramp(\reverseNormLevel, 10, 50);
~inst.waveset.shouldReverse = false;

// good values are 1 to current number of wavesets in the current set for the first argument and 0 to current number of wavesets in the current set for the second argument
~inst.transferSets(1, 2);
~inst.ramp(\transferLevel, 5, 10);
~inst.ramp(\transferNormLevel, 70, 100);
~inst.waveset.shouldTransfer = false;
~inst.changeTransferSet(~inst_two);

// good values are 1 to current number of wavesets in the current set for the first argument and 0 to current number of wavesets in the current set for the second argument~inst.interleaveSetsOne(1, 1);
~inst.interleaveSetsOne(1, 10);
~inst.ramp(\interleaveOneLevel, 100, 50);
~inst.ramp(\interleaveOneNormLevel, 50, 500);
~inst.waveset.shouldInterleaveOne = false;
~inst.changeLeaveOneSet(~inst_two);

// good values are 1 to current number of wavesets in the current set for the first argument and 0 to current number of wavesets in the current set for the second argument~inst.interleaveSetsTwo(3, 3);
~inst.interleaveSetsTwo(3, 3);
~inst.ramp(\interleaveTwoLevel, 50, 10);
~inst.ramp(\interleaveTwoNormLevel, 20, 900);
~inst.waveset.shouldInterleaveTwo = false;
~inst.changeLeaveTwoSet(~inst_two);

// good values are 1 to current number of wavesets in the current set for the first argument and 0 to current number of wavesets in the current set for the second argument
~inst.fxSwap(50, 10);
~inst.ramp(\fxLevel, 10, 1);
~inst.ramp(\fxNormLevel, 10, 3);
~inst.waveset.shouldFx = false;

// good values are 1 to current number of wavesets in the current set for the first argument and 0 to 2 for the second argument
~inst.normalizeSets(20, 0.1);
~inst.ramp(\normalizeAmount, 200, 1);
~inst.ramp(\normalizeThresh, 200, 1);
~inst.waveset.shouldNormalize = false;

// every 500 wavesets change the waveform
~inst.waveset.waveSubMod = {500};
// set it back to not switch the waveforms
~inst.waveset.waveSubMod =  {~inst.waveset.currSet.xings.size};
~inst.ramp(\waveSubMod, 3, 90);

// good values are 1 to current number of wavesets in the current set for the first argument and 0 to current number of wavesets in the current set for the second argument
~inst.subSets(10, 10);
~inst.ramp(\subLevel, 30, 1);
~inst.ramp(\subNormLevel, 90, 200);
~inst.waveset.shouldSub = false;
~inst.waveset.waves.showKeys();
~inst.changeSubWave('crazyu');
~inst.waveset.randomWave();
~inst.waveset.subBuf.plot



