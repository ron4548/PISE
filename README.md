# PISE

PISE (Protocol Inference with Symbolic Execution) is a tool that leverages symbolic execution and automata learning to uncover the state machine of a protocol implemented in a given executable. It is available in two modules:

- [The server](https://github.com/ron4548/PISEServer): for performing the symbolic execution. Implemented in Python.
- [The client](https://github.com/ron4548/PISEClient): responsible for automata learning. Implemented in Java.

## Installation

Simply `chmod +x install.sh`, and then `./install.sh`.

## Running our examples

`chmod +x run.sh` and then `./run.sh {EXAMPLE_MODULE_PATH}` where EXAMPLE_MODULE_PATH is one of:
* `examples.toy_client.toy_client_inference`
* `examples.ghost.gh0st_rat_inference`
* `examples.smtp.smtp_client_inference`
* `examples.toy_client_async_inference`

## Applying PISE on new binaries
See `README.md` of [PISEServer](https://github.com/ron4548/PISEServer).

## Talks & Paper

The PISE paper is available [here](https://github.com/ron4548/InferenceServer/blob/master/paper.pdf).

Our Black Hat USA 2022 briefing is available [here](https://www.blackhat.com/us-22/briefings/schedule/#automatic-protocol-reverse-engineering-27238).
