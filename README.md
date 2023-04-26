# Human Physiology Report

This repo is mostly just a way to capture the dependencies around [HumanPhysiologyReport.ipynb](HumanPhysiologyReport.ipynb) which is a [Jupyter Notebook](https://jupyter.org/).
It's a project submission for a biology course that I am taking.

## Why Jupyter and not, say, a google doc?

Because it should be considered dishonest to publish a plot without also publishing the code that generated the plot.

It's too easy to bundle bias into how your plots are rendered (lies, damned lies, and statistics, as the saying goes).
The fix is to make it as easy as possible for any reader to twiddle the knobs and render your data according to their perspective.

## Why Nix?

Jupyter is nice, but it's not a build system.
If the reader (i.e. another scientist) is going to... 

> twiddle the knobs and render your data according to their perspective

... like I've implied above, then it's unkind to expect them to first puzzle out which version of which dependency you've installed.

Readers familiar with the python ecosystem might suggest a `requirements.txt` for this, but that only works for python dependencies.
`matplotlib` for example, has more than just python dependencies.

Nix does what `requirements.txt` does, but for python and non-python dependencies alike.
In this case, we're using [jupyenv](https://jupyenv.io/) to handle this.

If you have nix installed, you can run `nix run` in this repo, and it'll build everything to the right version and launch jupyter lab so you can mess with the notebook.
