#include "types.h"
#include "user.h"

#define NUM_PROCESSES 5

int priorities[] = {1, 2, 1, 4, 3};

int workloads[] = {1, 3, 2, 3, 1};

// Function getpid() in a loop is being used:
// As we need to simulate work for the process without giving up cpu (which happens when sleep() is used)

// Min Burst Time
void perform_task1(int id, int pid)
{
    //print_ptable();
    // Simulating workload for a process
    int i;
    for (i = 0; i < 100000; i++)
    	getpid();
    	
    printf(1, "Process %d (PID: %d) (Pri: %d) finished\n", id, pid, get_priority(pid));
}

// Moderate Burst Time
void perform_task2(int id, int pid, int inner_call)
{
    //print_ptable();
    // Simulating workload for a process
    int i;
    
    for (i = 0; i < 10000; i++)
        for (i = 0; i < 100000; i++)
    	    getpid();
    
    if(!inner_call)
        printf(1, "Process %d (PID: %d) (Pri: %d) finished\n", id, pid, get_priority(pid));
}

// Max Burst Time
void perform_task3(int id, int pid)
{
    //print_ptable();
    // Simulating workload for a process
    int i;
    for (i = 0; i < 200000; i++)
    	getpid();
    	
    perform_task2(id, pid, 1);
    perform_task2(id, pid, 1);
    	
    printf(1, "Process %d (PID: %d) (Pri: %d) finished\n", id, pid, get_priority(pid));
}

int main()
{
    int i;
    for (i=0; i<NUM_PROCESSES; i++)
    {
        int pid = fork_with_priority(priorities[i]); // Fork child processes with given priorities
        if(pid < 0)
        	printf(1, "Fork failed for Child %d\n", i);
        else if(pid == 0) // For Varied Workloads
        {
            /*if(workloads[i]==1)
                perform_task1(i, getpid());
            else if(workloads[i]==2)
                perform_task2(i, getpid(), 0);
            else if(workloads[i]==3)
                perform_task3(i, getpid());*/
            perform_task3(i, getpid()); // For Singular Workload
            exit();
        }
        else // For Varied Arrival Times
        {
            /*for(int j=0; j<(i*1000); j++)
                getpid();*/
        }
    }

    for (i = 0; i < NUM_PROCESSES; i++)
    	wait();
    	
    exit();
}

