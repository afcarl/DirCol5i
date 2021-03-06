# README  --  DirCol5i

This repository contains the source code for DirCol5i, a trajectory optimization library for Matlab.
DirCol5i uses a medium-order direct collocation method that is designed to work well for problems
that have high-order derivatives, such as jerk or snap, in either the objective or dynamics function.
It also happens to automatically handle implicit second-order dynamics, as long as they are smooth.

I wrote this library in response to a question from Andy Ruina:
*Why do all trajectory optimization methods use explicit first-order dynamics?*
- The short answer is that the explicit first-order form improves the sparsity pattern in the gradients, which in turn improves convergence properties of the method.
- As a result, this code works fine for standard trajectory optimization problems, but it is a bit on the
slow side.
- That being said, it does seem to work better than standard algorithms on problems with high-derivatives
and implicit dynamics.

For standard trajectory optimization in Matlab I suggest using either:
- **OptimTraj** - My general-purpose open-source trajectory optimization toolbox:
https://github.com/MatthewPeterKelly/OptimTraj
- **GPOPS-II** - State-of-the-art professional trajectory optimization in Matlab:
http://www.gpops2.com/

## Comments / Suggestions / Questions:

Let me know if you have any questions about this software,
or if you are interested in using it for a research project.

## Contributing:

If you use this code and would like to add some feature, or improve the code or the documentation, then make a pull request! If it is well done then I will be happy to accept it.

## How to cite this code:

If you would like to cite this work then please email me  --
I'm in the process of getting the paper that describes this code published.

## Documentation:

I hope to add some better documentation once I finish the paper that describes the method.
