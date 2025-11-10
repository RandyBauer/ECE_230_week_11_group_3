# Edge Sensitive Circuits

# Group 3: Gage Magras, Randy Bauer

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

In this lab we learned how flip-flops differ from latches in that they store data based on a clock edge and not an incoming signal. The behavioral blocks within the flip-flops we built use the 'posedge' keyword to make our circuits edge-sensitive to the rising edge of the clock. We also learned the need to set an initial state for our circuits so that our FPGA board starts in a known condition.

### What is different between edge and level sensitive circuits?

Level sensitive circuits (like D-Latches) follow the input as long as the enable signal is high. Edge sensitive circuits update the moment the clock edge occurs and will ignore any other input changes until the next clock edge.

### Why is it important to declare initial state?

By declaring an initial state, we know the starting state of our FPGA board and can reliably predict the behavior of the board's output given our input.

### What do edge sensitive circuits let us build?

Edge sensitive circuits allow us to build things like registers, counters, and state machines which need inputs to be synchronized with the clock.

