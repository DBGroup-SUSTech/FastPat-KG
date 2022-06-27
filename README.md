# FastPat-KG
Extracting Top-k Interesting Patterns in Knowledge Graphs
# REQUIREMENTS:
Java JRE v1.8.0 or later
# INSTRUCTIONS TO COMPILE/RUN:
- Uncompress FastPat-KG by any compression tool
- Build Java binaries using the "build" script file
- Run FastPat-KG using "topkFrequent" script
# EXAMPLES:
(1) kCP problem
- Extract Top-10 frequent patterns in "Oscar" knowledge graph, with k = 10, core pattern is OscarQ3: "./topkFrequent -f Oscar.lg -cf OscarQ3.lg -k 10"

(2) kCPD problem
- Extract Top-10 frequent patterns with diversidy in "Oscar" knowledge graph, with k = 10, core pattern is OscarQ3, diversity threshold \lamda = 0.3: "./topkFrequent -f Oscar.lg -cf OscarQ3.lg -k 10 -t 0.3" 
