
// Define below at the start of proc.c
#define DEFAULT_PRIORITY 5
#define AGING_LIMIT 400 // Simply indicates Waiting Time Limit for a Process

// PRIORITY WITH AGING
void
scheduler(void)
{
  struct proc *p, *high_priority;
  struct cpu *c = mycpu();
  int old_priority;
  
  c->proc = 0;
  
  for(;;){

    sti();

    high_priority = 0;
    	
    // Loop over process table looking for process to run.
    acquire(&ptable.lock);

    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    {
      if(p->state != RUNNABLE)
        continue;
      
      if(p->aging_time > AGING_LIMIT) // Adjusting Priority as per AGING_LIMIT
      {
         old_priority = p->priority;
         p->priority -= 1;
         if(p->priority < 0)
             p->priority = 0;
         p->aging_time = 0; // Resetting as process is now of higher priority -> more chances of getting selected
         
         cprintf("Priority Changed, PID: %d (%d) -> (%d)\n", p->pid, old_priority, p->priority);
      }
      
      if(high_priority == 0 || p->priority < high_priority->priority) // Checking if there is any higher priority process
       		high_priority = p;
      else if(p->priority==high_priority->priority && p->arrival_time < high_priority->arrival_time)
      		high_priority = p;
    }
      
    if(high_priority != 0)
    {
        for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
            if(p!=high_priority)
                p->aging_time++;
          
        // Switch cpu context to the process context
	c->proc = high_priority;
      	switchuvm(high_priority);
        high_priority->state = RUNNING;
        high_priority->aging_time = 0; // Resetting as now the process has been selected for execution
        swtch(&(c->scheduler), high_priority->context);
        switchkvm();
        c->proc = 0;
    }
    
    release(&ptable.lock);

  }
}

