~inst.harmonizeSets({0.85}, 10,5);
~inst.ramp(\harmonizeLevel, 20, 10);
~inst.ramp(\harmonizeNormLevel, 10, 5000);
~inst.ramp(\harmLevel, 10, 0.75);
~inst.waveset.shouldHarmonize = false;

~inst.deleteSets(1, 5,false);
~inst.ramp(\deleteLevel, 80, 50);
~inst.ramp(\deleteNormLevel, 60, 20);
~inst.randomDeleteSets(1, 5, false);
~inst.waveset.shouldDelete = false;
~inst.waveset.shouldRandomDelete = false;
~inst.waveset.shouldDeletePause = true;
~inst.waveset.shouldDeletePause = false;

~inst.shrinkSets(1.2);
~inst.ramp(\shrinkAmt, 30, 1.2);
~inst.waveset.shouldShrink = false;

~inst.shuffleSets({30});
~inst.ramp(\shuffAmount, 20, 10);
~inst.waveset.shouldShuffle = false;

~inst.reverseSets(10, 0);
~inst.ramp(\reverseLevel, 10, 20);
~inst.ramp(\reverseNormLevel, 10, 50);
~inst.waveset.shouldReverse = false;

~inst.transferSets(1, 2);
~inst.ramp(\transferLevel, 5, 10);
~inst.ramp(\transferNormLevel, 70, 100);
~inst.waveset.shouldTransfer = false;
~inst.changeTransferSet(~inst_two);

~inst.interleaveSetsOne(1, 10);
~inst.ramp(\interleaveOneLevel, 100, 50);
~inst.ramp(\interleaveOneNormLevel, 50, 500);
~inst.waveset.shouldInterleaveOne = false;
~inst.changeLeaveOneSet(~inst_two);

~inst.interleaveSetsTwo(3, 3);
~inst.ramp(\interleaveTwoLevel, 50, 10);
~inst.ramp(\interleaveTwoNormLevel, 20, 900);
~inst.waveset.shouldInterleaveTwo = false;
~inst.changeLeaveTwoSet(~inst_two);

~inst.fxSwap(50, 10);
~inst.ramp(\fxLevel, 10, 1);
~inst.ramp(\fxNormLevel, 10, 3);
~inst.waveset.shouldFx = false;

~inst.normalizeSets(20, 0.1);
~inst.ramp(\normalizeAmount, 200, 1);
~inst.ramp(\normalizeThresh, 200, 1);
~inst.waveset.shouldNormalize = false;

~inst.waveset.waveSubMod = {200};
~inst.waveset.waveSubMod =  {~sax.waveset.currSet.xings.size};
~inst.ramp(\waveSubMod, 3, 90);
~inst.subSets(10, 200);
~inst.ramp(\subLevel, 30, 1);
~inst.ramp(\subNormLevel, 90, 200);
~inst.waveset.shouldSub = false;
~inst.waveset.waves.showKeys();
~inst.changeSubWave('');
~inst.waveset.randomWave();
~inst.waveset.subBuf.plot





