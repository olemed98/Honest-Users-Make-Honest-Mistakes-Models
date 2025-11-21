## eID Protocol Models 

This repository contains different models of 4 eID protocols that specify different corruption and user mistake scenarios. [Tamarin](https://tamarin-prover.com/) can be used to automatically check which security level can still be achieved in such scenarios. 


### Reproducing Results

We used Tamarin to analyse these models on a laptop (with an Apple M1 Pro chip with 16 BG of memory and 8 cores), using Tamarin (Version 1.8.0) and Maude (Version 2.7.1).

One can use the following command, e.g. for Password: 

```
tamarin-prover --quit-on-warning --prove Password.spthy > Password.result
```

For each model, we provide the result we obtained in the folder `results`. 

For reference, the time and memory usage for each model can be found below. 

As reported by the command `/usr/bin/time -l` (`-l` is an option for BSD versions while `-v` provides similar output for GNU versions):

```
Password.spthy                      123.78 real       157.68 user        13.31 sys   232113536  peak memory footprint
AppOnly.spthy                       32.60 real        67.24 user          3.89 sys   615155968  peak memory footprint
AppOnly_Plus.spthy                  32.54 real        68.74 user           3.91 sys   719178240 peak memory footprint
AppOnlyWrite.spthy                  42.28 real        58.25 user          4.63 sys   476628864  peak memory footprint
AppOnlyWrite_Plus.spthy             42.77 real        57.02 user          4.77 sys   495585344  peak memory footprint
AppOnlyCompare.spthy                34.55 real        71.81 user         4.40 sys    624511232  peak memory footprint
AppOnlyCompare_Plus.spthy           35.40 real        76.80 user          4.14 sys   642418880  peak memory footprint
TwoFactor.spthy                   33917.45 real     35950.69 user      3162.38 sys  1891996288  peak memory footprint
TwoFactor_Plus.spthy              31587.44 real     36867.35 user      3281.13 sys  1898238656  peak memory footprint
```

As reported by Tamarin:

```
Password.result:                    processing time:    123.70s
AppOnly.result:                     processing time:     32.55s
AppOnly_Plus.result:                processing time:     32.50s
AppOnlyWrite.result:                processing time:     42.23s
AppOnlyWrite_Plus.result:           processing time:     42.72s
AppOnlyCompare.result:              processing time:     34.50s
AppOnlyCompare_Plus.result:         processing time:     35.35s
TwoFactor.result:                   processing time:  33917.37s
TwoFactor_Plus.result:              processing time:  31587.35s
```
