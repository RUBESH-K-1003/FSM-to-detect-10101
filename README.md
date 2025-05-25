# FSM-to-detect-10101
FSM to detect 10101 Verilog Code
The FSM module implements a Moore finite state machine that detects the overlapping binary sequence 10101 from a serial data input stream. This FSM is designed to assert an output signal (detector) only when the full pattern is recognized, and it supports overlapping sequences — meaning it can continue detecting new sequences even if they share bits with the previous one.
