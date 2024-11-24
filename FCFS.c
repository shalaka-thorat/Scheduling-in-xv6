
// FCFS
void
scheduler(void)
{
  struct proc *p, *earliest;
  struct cpu *c = mycpu();
  c->proc = 0;
  
  for(;;)
  {
    sti();

    earliest = 0;
    acquire(&ptable.lock);
    
    // Iterate over ptable and find the earliest process according to arrival_time
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
    	if(p->state != RUNNABLE)
        	continue;
        	
       	if(earliest == 0 || p->arrival_time < earliest->arrival_time) // Checking if there is any earlier process
       		earliest = p;
    }

    if(earliest != 0)
    {
        // Switch cpu context to the process context
        //cprintf("PID:%d Selected for Execution\n", earliest->pid);
		c->proc = earliest;
      	switchuvm(earliest);
        earliest->state = RUNNING;
        swtch(&(c->scheduler), earliest->context);
        switchkvm();
        c->proc = 0;
    }

    release(&ptable.lock);
   }
}

