~moves.harmonizeSets({0.75},5,5);
~moves.harmonizeSets({rrand(0.4,0.65)},20,20);
~moves.waveset.shouldHarmonize = false;

~moves.deleteSets(1,30,false);
~moves.deleteSets(2,50,true);
~moves.randomDeleteSets(1, 10,false);
~moves.randomDeleteSets(5,10,true);
~moves.waveset.shouldDelete = false;
~moves.waveset.shouldRandomDelete = false;
~moves.waveset.shouldDeletePause = true;

~moves.shrinkSets(1.1);
~moves.waveset.shouldShrink = false;

~moves.shuffleSets({5});
~moves.shuffleSets({rrand(2,80)});
~moves.waveset.shouldShuffle = false;

~moves.reverseSets(2,0);
~moves.waveset.shouldReverse = false;

~moves.transferSetsOne(3,3);
~moves.waveset.shouldTransferOne = false;

~moves.transferSetsTwo(3,11);
~moves.waveset.shouldTransferTwo = false;

~moves.interleaveSetsOne(1,1);
~moves.waveset.shouldInterleaveOne = false;

~moves.interleaveSetsTwo(3,3);
~moves.waveset.shouldInterleaveTwo = false;

~moves.normalizeSets(2,2);
~moves.waveset.shouldNormalize = false;

~moves.subSets(9,9);
~moves.waveset.waveSubMod = {rrand(600,1100)};
~moves.waveset.waveSubMod =  {~moves.waveset.currSet.xings.size};
~moves.waveset.shouldSub = false;



