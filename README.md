# RDAFOAM
A ground-zero numerical reactive transport model for simulating rotating disk experiments

# How To Use
The RDAFOAM simulator consists of two OpenFOAM solvers: "scalarTransportFoam " and "pimpleDymFoam" . pimpleDyMFoam is a transient solver for incompressible, flow of Newtonian fluids on a moving mesh using the PIMPLE (merged PISO-SIMPLE) algorithm. Also, The scalarTransportFoam is a basic solver which resolves a transport equation for a passive scalar, using a user-specified stationary velocity field. To use the solvers, it is necessary to first install OpenFOAM: https://openfoam.org/download/
And its plugin, swak4Foam: https://openfoamwiki.net/index.php/Contrib/swak4Foam
Should you have any question, please contact the developers: mcrossover97@gmail.com , esmaeilghasemi25@gmail.com
