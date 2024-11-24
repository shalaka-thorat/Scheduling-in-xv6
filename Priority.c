
// PRIORITY
void
scheduler(void)
{
  struct proc *p, *high_priority;
  struct cpu *c = mycpu();
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
      
      if(high_priority == 0 || p->priority < high_priority->priority) // Checking if there is any higher priority process
       		high_priority = p;
      else if(p->priority==high_priority->priority && p->arrival_time < high_priority->arrival_time)
      		high_priority = p;
    }
      
    if(high_priority != 0)
    {
        //cprintf("PID:%d Selected for Execution\n", high_priority->pid);
	c->proc = high_priority;
      	switchuvm(high_priority);
        high_priority->state = RUNNING;
        swtch(&(c->scheduler), high_priority->context);
        switchkvm();
        c->proc = 0;
    }
    
    release(&ptable.lock);

  }
}

