This repository demonstrates a subtle memory leak that can occur when using NSOperationQueue in Objective-C.  The `MemoryLeakOperation.m` file contains the buggy code, where an object is retained within the operation's `main` method, but never released.  This leads to a memory leak.  The solution is shown in `MemoryLeakOperationSolution.m`, highlighting proper memory management within the operation.