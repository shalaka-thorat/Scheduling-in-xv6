# Scheduling-Algorithms-in-xv6
Exploring Various Scheduling Algorithms using xv6

<img style="justify:center;" src="https://github.com/user-attachments/assets/bc676e72-c333-41b8-a3b9-a14df2995f77" height="300" width="400">


## Overview
● Scheduling algorithms are essential in Operating Systems as they determine how CPU allocation to the processes, and in turn influence CPU utilization.<br>
 ● This project provides a practical aspect of exploring scheduling algorithms by implementing them in xv6.<br>
 ● This project aims to enhance the CPU scheduling mechanism in the xv6.

## Components of the Project
<ol>
 <li>xv6 OS</li>
 <li>Scheduling Algorithms</li>
 <p>Namely, 4 Scheduling Algorithms have been used as follows. (You'll have to replace the scheduler function from proc.c with the respective Algorithm)</p>
 <ul>
  <li>Round Robin Scheduler Function (Current xv6 Implementation) <a href="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/RR.c">Here</a></li>
  <li>FCFS Scheduler Function <a href="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/FCFS.c">Here</a></li>
  <li>Priority Algorithm Scheduler Function <a href="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/Priority.c">Here</a></li>
  <li>Priority with Aging Scheduler Function <a href="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/Aging.c">Here</a></li>
 </ul>
</ol>

## Simulation Setup
The xv6 Folder contains 2 Simulation Files:
1) <a href="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/xv6/simulate.c">simulate.c</a> <br>
   This file can be used for testing Round Robin and FCFS Algorithms.
2) <a href="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/xv6/simulate_priority.c">simulate_priority.c</a> <br>
   This file can be used for testing Priority with and without Aging Algorithm.
You need to modify the scheduler function (In File <b>proc.c</b>) to test any specific Algorithm mentioned above 4.<br>

Next, you can explore the following additional 2 parameters and analyze their effect on the Scheduling Algorithms:
1) Varied Arrival Times
2) Varied Workloads

<ul>
 <li>The below screenshot shows the current setup for the Simulation File, i.e. Same Workload and Arrival Time of Child Processes<br><br>
<img src="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/Simulation-Setup/singular.png" height="300" width="400"></li>

<li>In order, to incorporate Varied Arrival Times, the Simulation File main() should be as follows:<br><br>
<img src="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/Simulation-Setup/varrival.png" height="300" width="400"><br>
This code block makes sure that child processes are created with some delays.<br><br></li>

<li>In order, to incorporate Varied Workloads, the Simulation File main() should be as follows:<br><br>
<img src="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/Simulation-Setup/vworkload.png" height="300" width="400"><br>
This code block provides a mechanism to provide different complexity of workload to each process.<br><br></li></ul>

You can modify this workload-to-process mapping, as well as priority-to-process mapping using these global arrays from Simulation Files:<br><br>
<img width="215" alt="Priority and Workload Config" src="https://github.com/user-attachments/assets/f4fde2da-a09f-414a-a39f-541f8797312c">

## Executing on xv6:
1) Navigate to the xv6 Folder using the Terminal.<br>
2) Type <b>make qemu-nox</b> in the Terminal to boot xv6 and open a shell.<br>
3) Run <i>'simulate'</i> and <i>simulate_priority'</i> program executables for respective Scheduling Algorithms.

## Experiments and Output:

The <a href="https://github.com/shalaka-thorat/Scheduling-in-xv6/blob/main/Presentation_Slides.pdf">Presentation Slides</a> give an overview and analysis of the experiments performed.<br><br>
The <a href="https://github.com/shalaka-thorat/Scheduling-in-xv6/tree/main/Output">Output Folder</a> contains output screenshots for each of the settings discussed above. This folder also contains the experimental readings and observations.<br>
