
## Comparison of SAT-based Planners

There is one directory for each participant.
Inside each directory, you find the following information:

* `log_<instance-id>_<domain>` contains the full output of the planner for the respective solved instance
* `cls_<instance-id>_domain>` contains the total number of encoded clauses for the respective instance split by stages (only for Lilotane* and Tree-REX)
* `runtimes` contains a sorted sequence of run times in seconds, one line and one number for each solved instance
* `runtimes_noopt` is like `runtimes` but without the time needed for plan improvement (only where applicable)
* `clauses` contains the total number of clauses for each instance (structure: `<instance-id> <domain> <n-clauses>`)
* `clauses_noopt` is like `clauses` but without the clauses added for plan improvement (only where applicable)
* `opt_planlengths` contains the length of fully improved plans which were found (structure: `<instance-id> <length>`) (only for LilotaneQ and PANDA-SAT-OPT)
* `runtimes` contains a sorted sequence of run times in seconds, one line and one number for each solved instance
* `mempeaks` contains a sorted sequence of memory usage peaks in kilobytes, one line and one number for each solved instance
* `lits_per_clause` contains a sorted sequence of average clause lengths, one line and one number for each solved instance  
_Note: For Tree-REX, the average clause lengths have been evaluated separately and retroactively as the necessary planner output was not part of the original evaluation. Hence, there might be a slight variation compared to the actual data of the depicted run._
* `runtimes_stages` contains a partition of the total run times (sum over all solved instances) into major stages of the planning process

The file `instances.txt` contains a list of all used benchmarks in the following form: 

    <instance-id> <domain-file> <problem-file>
