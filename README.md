# 🧮 5-Element Bubble Sort Design in Verilog

## 📌 Overview

This project implements a **hardware-based Bubble Sort algorithm** using **Verilog HDL**. The design sorts **five 16-bit input values** in **descending order** using a combinational sorting network and sequential registers.

The architecture follows a **pipelined approach**:

* Input values are first stored in registers
* Sorting is performed using combinational logic
* Sorted outputs are stored in output registers

---
## 🔄 Working Principle

### 1. Input Register Stage

* Inputs (`in1` to `in5`) are captured on the **posedge of clk**
* Stored in internal registers:

  ```
  dat1, dat2, dat3, dat4, dat5
  ```

### 2. Sorting Logic (Combinational)

* Bubble sort algorithm is implemented using **nested loops**
* Data is stored in an array:

  ```
  array[1:5]
  ```
* Comparison:

  ```
  if (array[j] < array[j+1])
  ```
* Swapping ensures **descending order**

### 3. Output Register Stage

* Sorted values are captured on **posedge clk**
* Outputs:

  ```
  out1 ≥ out2 ≥ out3 ≥ out4 ≥ out5
  ```

---

## 🔁 Bubble Sort Algorithm (Hardware Mapping)

* Compare adjacent elements
* Swap if left < right
* Repeat for multiple passes
* Fully unrolled in combinational logic

---


## 🧠 Key Concepts Used

* Sequential Logic (Flip-Flops)
* Combinational Logic
* Arrays in Verilog
* Nested Loop Implementation
* Data Path Design

---

## ⏱️ Timing Behavior

| Stage         | Operation                        |
| ------------- | -------------------------------- |
| Clock Cycle 1 | Inputs captured into registers   |
| Combinational | Sorting performed instantly      |
| Clock Cycle 2 | Outputs updated with sorted data |

---

## 📊 Example

### Input:

```
in1 = 10, in2 = 5, in3 = 25, in4 = 15, in5 = 8
```

### Output (Descending):

```
out1 = 25
out2 = 15
out3 = 10
out4 = 8
out5 = 5
```


---

