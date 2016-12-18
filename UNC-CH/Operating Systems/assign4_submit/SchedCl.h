struct sched_class {
	const struct sched_class *next;

        void (*enqueue_task) (void);  
	void (*dequeue_task) (void);  
	void (*yield_task) (void);  
	bool (*yield_to_task) (void);  

	void (*check_preempt_curr) (void);  

	struct task_struct * (*pick_next_task) (void);  
	void (*put_prev_task) (void);  

#ifdef CONFIG_SMP
	int  (*select_task_rq) (void);  
	void (*migrate_task_rq) (void);  

	void (*pre_schedule) (void);  
	void (*post_schedule) (void);  
	void (*task_waking) (void);  
	void (*task_woken) (void);  

	void (*set_cpus_allowed) (void);  
				

	void (*rq_online) (void);  
	void (*rq_offline) (void);  
#endif

	void (*set_curr_task) (void);  
        void (*task_tick) (void *rq, struct task_struct *p, int queued);
	void (*task_fork) (void);  

	void (*switched_from) (void);  
	void (*switched_to) (void);  
	void (*prio_changed) (void);  
			     

	unsigned int (*get_rr_interval) (void);  
					
#ifdef CONFIG_FAIR_GROUP_SCHED
	void (*task_move_group) (void);  
#endif
};
