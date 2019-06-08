package strategy

const (
	//SyncModeBatch persistency mode,  batched each chunk/partition merged with tmp transient table, then after all chunk transferred temp table marged with dest table
	SyncModeBatch = "batch"
	//SyncModeIndividual individual - each chunk/partition merged with dest table,
	SyncModeIndividual = "individual"
	//DMLMerge regular MERGE DML
	DMLMerge = "merge"
	//DMLMergeInto regular MERGE DML
	DMLMergeInto = "mergeInto"
	//DMLInsertOrReplace INSERT OR REPLACE DML
	DMLInsertOrReplace = "insertOrReplace"
	//DMLInsertOnDuplicateUpddate INSERT ON DUPLICATE UPDATE DML style
	DMLInsertOnDuplicateUpddate = "insertOnDuplicateUpdate"

	//DMLInsertOnConflictUpddate INSERT ON CONFLICT DO UPDATE DML style
	DMLInsertOnConflictUpddate = "insertOnConflictUpdate"
	//DMLInsert INSERT
	DMLInsert = "insert"
	//DMLDelete DELETE
	DMLDelete = "delete"

	//DMLDelete DELETE
	TransientDMLDelete = "transientDelete"
)

//Method represents a sync strategy
type Method struct {
	Chunk        Chunk
	IDColumns    []string
	Diff         Diff
	DirectAppend bool   `description:"if this flag is set all insert/append data is stream directly to the dest table"`
	MergeStyle   string `description:"supported value:merge,insertReplace,insertUpdate,insertDelete"`
	Partition    Partition
	AppendOnly   bool `description:"if set instead of merge, insert will be used"`
	Force        bool `description:"if set skip checks if values in sync"`
}

//Init initializes strategy
func (s *Method) Init() error {
	err := s.Diff.Init()
	if err == nil {
		if err = s.Partition.Init(); err == nil {
			err = s.Chunk.Init()
		}
	}
	return err
}

//IsOptimized returns true if optimized sync
func (s *Method) IsOptimized() bool {
	return  !s.Force
}