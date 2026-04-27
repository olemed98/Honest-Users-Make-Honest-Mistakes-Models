# Tamarin Models for "Honest Users Make Honest Mistakes Models"

This repository contains different models of 4 eID protocols that specify different corruption and user mistake scenarios. It accompanies the publication entitled "Honest Users Make Honest Mistakes: A Framework for Analysing eID Protocols", which will be published in the proceedings of EuroS&P 2026. [Tamarin](https://tamarin-prover.com/) can be used to automatically check which security level can still be achieved in such scenarios. 

## Reproducing Results

We used Tamarin to analyse these models on a laptop (with an Apple M1 Pro chip with 16 GB of memory and 8 cores), using Tamarin (Version 1.8.0) and Maude (Version 2.7.1).

One can use the following command, e.g. for Password: 

```
tamarin-prover --quit-on-warning --prove Password.spthy > Password.result
```
For readability, the threat scenarios with and without corrupt users are distinguished at top level. For each model, we provide the result we obtained in the folder `results`. They have been generated using a script, which can be found in the same folder. 

For reference, the time and memory usage for each model can be found below. 

As reported by the command `/usr/bin/time -l` (`-l` is an option for BSD versions while `-v` provides similar output for GNU versions):

## Summary of Results for Models with No Corrupt Users

These models can be found in folder `No Corrupt Users`.

```
Password.spthy                     123.78 real       157.68 user       13.31 sys      232113536  peak memory footprint
AppOnly.spthy                       32.60 real        67.24 user        3.89 sys      615155968  peak memory footprint
AppOnly_Plus.spthy                  32.54 real        68.74 user        3.91 sys      719178240  peak memory footprint
AppOnlyWrite.spthy                  42.28 real        58.25 user        4.63 sys      476628864  peak memory footprint
AppOnlyWrite_Plus.spthy             42.77 real        57.02 user        4.77 sys      495585344  peak memory footprint
AppOnlyCompare.spthy                34.55 real        71.81 user        4.40 sys      624511232  peak memory footprint
AppOnlyCompare_Plus.spthy           35.40 real        76.80 user        4.14 sys      642418880  peak memory footprint
TwoFactor.spthy                  33917.45 real     35950.69 user     3162.38 sys     1891996288  peak memory footprint
TwoFactor_Plus.spthy             31587.44 real     36867.35 user     3281.13 sys     1898238656  peak memory footprint
TwoFactorCompare.spthy           45805.83 real     37221.67 user     3427.51 sys     1936036544  peak memory footprint
TwoFactorCompare_Plus.spthy      49423.47 real     38365.59 user     3622.16 sys     1934905984  peak memory footprint
TwoFactorWrite.spthy              5138.45 real      5741.76 user      532.66 sys     1264569664  peak memory footprint
TwoFactorWrite_Plus.spthy         5151.38 real      5736.23 user      526.61 sys     1267666304  peak memory footprint
WebAuthn.spthy                     660.09 real       790.13 user       68.95 sys      415876992  peak memory footprint
WebAuthn_Plus.spthy                664.86 real       797.51 user       69.11 sys      419972864  peak memory footprint
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
TwoFactorCompare.result:            processing time:  45805.74s
TwoFactorCompare_Plus.result:       processing time:  49423.68s
TwoFactorWrite.result:              processing time:   5138.38s
TwoFactorWrite_Plus.result:         processing time:   5151.33s
WebAuthn.result:                    processing time:    660.05s
WebAuthn_Plus.result:               processing time:    664.82s
```

## Summary of Results for Models with Corrupt Users

These models can be found in folder `With Corrupt Users`.

```
Password.spthy                     191.02 real       237.18 user        21.56 sys      319375168  peak memory footprint
AppOnly.spthy                       58.21 real        79.22 user         7.00 sys      712788544  peak memory footprint
AppOnly_Plus.spthy                  58.77 real        81.70 user         7.08 sys      713787840  peak memory footprint
AppOnlyWrite.spthy                  31.37 real        71.10 user         3.94 sys      478709632  peak memory footprint
AppOnlyWrite_Plus.spthy             49.61 real        68.38 user         5.82 sys      579422272  peak memory footprint
AppOnlyCompare.spthy                61.33 real        85.02 user         7.34 sys      776636800  peak memory footprint
AppOnlyCompare_Plus.spthy           62.94 real        93.90 user         7.72 sys      790317696  peak memory footprint
TwoFactor.spthy                  49529.13 real     48888.78 user     11592.53 sys     2217120896  peak memory footprint
TwoFactor_Plus.spthy             44109.71 real     45688.40 user      9777.48 sys     2236028096  peak memory footprint
TwoFactorCompare.spthy           48392.69 real     48000.70 user     12869.19 sys     2270663936  peak memory footprint
TwoFactorCompare_Plus.spthy      45031.67 real     47419.12 user      8874.60 sys     1617072128  peak memory footprint
TwoFactorWrite.spthy              7703.86 real      8191.76 user      1530.00 sys     1481690880  peak memory footprint
TwoFactorWrite_Plus.spthy         7926.89 real      8357.11 user      1697.29 sys     1520570240  peak memory footprint
WebAuthn.spthy                     954.97 real      1134.99 user       101.16 sys      469321600  peak memory footprint
WebAuthn_Plus.spthy                961.15 real      1143.63 user       102.67 sys      529123264  peak memory footprint
```

As reported by Tamarin:

```
Password.result:                    processing time:    190.92s
AppOnly.result:                     processing time:     58.15s
AppOnly_Plus.result:                processing time:     58.71s
AppOnlyWrite.result:                processing time:     31.32s
AppOnlyWrite_Plus.result:           processing time:     49.55s
AppOnlyCompare.result:              processing time:     61.27s
AppOnlyCompare_Plus.result:         processing time:     62.89s
TwoFactor.result:                   processing time:  49528.31s
TwoFactor_Plus.result:              processing time:  44108.65s
TwoFactorCompare.result:            processing time:  48392.65s
TwoFactorCompare_Plus.result:       processing time:  45031.52s
TwoFactorWrite.result:              processing time:   7703.77s
TwoFactorWrite_Plus.result:         processing time:   7926.83s
WebAuthn.result:                    processing time:    954.92s
WebAuthn_Plus.result:               processing time:    961.09s
```
