In Objective-C, a tricky error can arise when dealing with `NSOperationQueue` and its interaction with automatic reference counting (ARC).  If you create an `NSOperation` subclass and within its `main` method, you retain a strong reference to a significant object, but forget to release it upon completion, you may encounter unexpected memory leaks, even if ARC is handling most other memory management.  This subtle issue often doesn't manifest immediately because the operation might finish quickly. However, with prolonged or frequent execution of such operations, memory usage will steadily increase.