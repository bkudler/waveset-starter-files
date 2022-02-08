# waveset-player--for-trevor-wishart-


This creates an interface in SuperCollider for working with all of the waveset transformations described by Trevor Wishart, as recounted by Curtis Road in *Microsound*, plus a few weird ones I found along the way.

You will have to have [the waveset quark](https://github.com/supercollider-quarks/Wavesets) installed.

More info on [installing quarks](https://doc.sccode.org/Guides/UsingQuarks.html)


you'll need to add in some files in certain places.

In `boot-file.scd` where it says 
```
//drag and drop files paths here
~files = (
    \currSet : "",
    \leaveOneSet : "",
    \leaveTwoSet : "",
    \transferSetOne : "",
    \transferSetTwo : ""
);
 
```

you will have to pick a mono audio file for each variable. Put the aboslute path in between the quotation marks. Each file is used for a different waveset transformation.
