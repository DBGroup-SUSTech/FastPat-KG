# FastPat-KG
## OVERVIEW
- FastPat is a framework to solve kCP problem, which extracts core-based top-k frequent patterns in knowledge graphs. 
- FastPat+ is a framework to solve kCPD problem, which extracts core-based top-k frequent patterns with diversity in knowledge graphs.
## REQUIREMENTS
	Java JRE v1.8.0 or later
## USAGE
### Settings
The proposed optimizations of each algorithm (e.g., kCP-A, FPD-A) could be set in the configuration file *Settings.java*.
### Instructions to compile/run
	- Uncompress FastPat-KG by any compression tool
	- Build Java binaries using the "build" script file
	- Run FastPat/FastPat+ using "topkFreq/topkFreqDiv" script
### Execution examples
1. **kCP problem**
- Extract Top-10 frequent patterns in "Oscar" knowledge graph, with k = 10, core pattern is OscarTest: "./topkFreq.sh -f Oscar.lg -cf OscarTest.lg -k 10"

2. **kCPD problem**
- Extract Top-10 frequent patterns with diversidy in "Oscar" knowledge graph, with k = 10, core pattern is OscarTest, diversity threshold \lamda = 0.3: "./topkFreqDiv.sh -f Oscar.lg -cf OscarTest.lg -k 10 -t 0.3" 
### Expected graph format
	v <node_id> <node_label>
	v <node_id> <node_label>
	...
	e <node_id1> <node_id2> <edge_label>
	e <node_id1> <node_id2> <edge_label>
	...

In particular, it must first list all the graph nodes in ascending order of id, and then all the edges. Lines corresponding to nodes start with the letter v, while those corresponding to edges start with the letter e. ReSuM currently supports only double values as labels, and integer values as node and edge ids.
