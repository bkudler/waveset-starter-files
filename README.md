# WavesetTransformer:For Trevor Wishart. Bootstrap files

These files will help a player get started working with [WavesetTransformer:For Trevor Wishart](https://github.com/bkudler/WavesetTransformer-ForTrevorWishart). The tutorial videos in the repository for the main instrument will explain how to work with these files.

Files will need to be added to get sound.

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

Pick a mono audio file for each variable. Put the aboslute path in between the quotation marks. Each file is used for a different waveset transformation.
