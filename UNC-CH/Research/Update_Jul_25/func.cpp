    vector<std::pair<map<string, string>, statistic>> valid_instants_on_traces(
            const spot::ltl::formula *prop_type,
            instants_pool_creator *instantiator,
            shared_ptr<set<map<event, vector<long>>> > traces,
            bool use_invar_semantics,
            shared_ptr<map<string, string>> translations) {
        shared_ptr<map<string, string>> current_instantiation;
        shared_ptr<map<string, string>> previou_instantiation;
	std::_Rb_tree_iterator<std::pair<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > > ptr;
	int i;
	bool valid;
	const char *one;
	const char *two;
	//shared_ptr<map<string, string>>::iterator ptr;
	printf("In src/checkers/maptracechecker.cpp, ln 1909 - staring function\n\n");
        instantiator->reset_instantiations();
        // vector to return
        vector<std::pair<map<string, string>, statistic>> return_vec;
        // create a vector of checkers to retain memoization across instantiation
        // checking.
        vector<map_trace_checker> all_checkers;
        for (set<map<event, vector<long>>>::iterator traces_it = traces->begin();
             traces_it != traces->end(); traces_it++) {
            all_checkers.push_back(map_trace_checker(&(*traces_it), use_invar_semantics, translations));
        }

        int num_traces = all_checkers.size();
	printf("In src/checkers/maptracechecker.cpp, ln 1922 - num = %d\n\n", num_traces);

        // create the ap collector for memoization, add to each checker
        subformula_ap_collector *collector = new subformula_ap_collector();
        prop_type->accept(*collector);
        for (int i = 0; i < num_traces; i++) {
            all_checkers[i].add_relevant_bindings(&collector->subform_ap_set);
        }
	printf("In src/checkers/maptracechecker.cpp, ln 1930 - created ap collector\n\n");

	int loop_counter = 0;
	int valid_counter = 0;
	current_instantiation = instantiator->get_next_instantiation();
        // go through and check on all traces
        while (current_instantiation != NULL) {
	    //printf("In src/checkers/maptracechecker.cpp, ln 1939 - loop %d\n\n", loop_counter);

            map<string, string> instantiation_to_pass = *current_instantiation;
	    ptr = current_instantiation->begin();
	    one = ptr->second.c_str();
	    ptr++;
	    two = ptr->second.c_str();
	    valid = !strncmp(one,two,1 + strcspn(one,"[="))
	    //ptr = current_instantiation->begin();
	    //for (i = 0; i < current_instantiation->size(); i++) {
	    //	printf("In src/checkers/maptracechecker.cpp, ln 1939 - loop = %d, key = %s, val = %s\n\n", i, ptr->first.c_str(), ptr->second.c_str());
	    //	ptr++;
	    //}
            // easy work around the possibility of events instead of
            // variables: add to current_instantiation event->event
            vector<string> exclude_events = instantiator->get_events_to_exclude();
            if (exclude_events.size() != 0) {
                for (vector<string>::iterator events_it = exclude_events.begin(); events_it !=
                                                                                  exclude_events.end(); events_it++) {
                    instantiation_to_pass.emplace(*events_it, *events_it);
                }
            }
	    //printf("In src/checkers/maptracechecker.cpp, ln 1952 - loop %d\n\n", loop_counter);
            // const spot::ltl::formula * instantiated_prop_type = instantiate(prop_type,*current_instantiation, instantiator->get_events_to_exclude());
            // is the instantiation valid?
	    if (valid) {
           	 statistic global_stat = statistic(true, 0, 0);
           	 for (int i = 0; i < num_traces; i++) {  
           	     //printf("In src/checkers/maptracechecker.cpp, ln 1960 - loop %d, i = %d\n\n", loop_counter, i);
            	    global_stat = statistic(global_stat, all_checkers[i].check_on_trace(prop_type, instantiation_to_pass));
           	     //printf("In src/checkers/maptracechecker.cpp, ln 1962 - loop %d, i = %d\n\n", loop_counter, i);
           	     if (!global_stat.is_satisfied) {
           	         break;
                     }																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																	
                 }
	    	//printf("In src/checkers/maptracechecker.cpp, ln 1963 - loop %d\n\n", loop_counter);
            	// instantiated_prop_type->destroy();
            	if (global_stat.is_satisfied) {
              	  std::pair<map<string, string>, statistic> finding(*current_instantiation, global_stat);
               	 return_vec.push_back(finding);
            	}
		valid_counter++;
	    }
	    loop_counter++;
	    current_instantiation = instantiator->get_next_instantiation();
        }
        delete (collector);
	printf("In src/checkers/maptracechecker.cpp, ln 2007 - loops %d valids %d\n\n", loop_counter,valid_counter);
        return return_vec;
    }
