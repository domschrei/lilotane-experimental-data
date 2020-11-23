
### IPC Followup Evaluations

Run files `ipc_run_*` provide compact information on the results and are structured as follows:

    <instance-id> <runtime-seconds> <mempeak-kbs-or-zero> <plan-length>

The instance listing `instances.txt` is structured as follows:

    <instance-id> <problem-file> <domain-file>

Note that the instances themselves can be found [in this repository](https://github.com/panda-planner-dev/ipc2020-domains/tree/master/total-order).

For the full output of each planner on each instance, see the respective directories `<participant>/<instance-id>/`.

The planners have been configured as follows:

* HyperTensioN: Exactly as in the Singularity container of the IPC.
* Prelilotane: Release build based on https://github.com/domschrei/lilotane/tree/e15d01c8703e6205ef4fce40bcb6c46f5ab82187 , configuration `-v=2 -co=0`
* Lilotane: Release build based on https://github.com/domschrei/lilotane/tree/2cbbcc29bbed9e67a87ee4e285a2095551f3e3b0 , configuration `-v=2 -co=0`
* LilotaneQ: As Lilotane, configuration `-v=2 -co=0 -of=-1`
* LilotaneQ+: As Lilotane, configuration `-v=2 -co=0 -of=-1 -el=1`
