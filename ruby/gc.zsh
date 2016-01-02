#!/bin/sh

# export RUBY_GC_HEAP_INIT_SLOTS=16000000 # 16M
# export RUBY_GC_HEAP_FREE_SLOTS=600000  # 0.6M
# export RUBY_GC_HEAP_GROWTH_FACTOR=2
# export RUBY_GC_HEAP_GROWTH_MAX_SLOTS=16000000 # 16M
# export RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR=1.3
# export RUBY_GC_MALLOC_LIMIT_MAX=4000000000    # 4G
# export RUBY_GC_MALLOC_LIMIT_GROWTH_FACTOR=2
# export RUBY_GC_OLDMALLOC_LIMIT=500000000      # 500M
# export RUBY_GC_OLDMALLOC_LIMIT_MAX=1000000000 # 1G
# export RUBY_GC_OLDMALLOC_LIMIT_GROWTH_FACTOR=2

# Initial number of slots allocated on Ruby's heap.
export RUBY_GC_HEAP_INIT_SLOTS=1534896 #1024000 # default: 10_000
# After a GC execution, the minimum number of free slots that should be available.
export RUBY_GC_HEAP_FREE_SLOTS=767448  # default: 4096
export RUBY_GC_HEAP_SLOTS_GROWTH_FACTOR=2

# When the heap needs to be expanded, allocate slots by this factor
export RUBY_GC_HEAP_GROWTH_FACTOR=1.5 # default: 1.8
# Set the maximum number of slots that Ruby is allowed to add to the heap at once.
# When disabled, Ruby uses the heap growth factor to determine by how much to grow the heap.
export RUBY_GC_HEAP_GROWTH_MAX_SLOTS=0 # default: 0


# The number of bytes that have been allocated but not yet freed
# If malloc_increase exceeds the malloc_limit a minor GC is triggered.
export RUBY_GC_MALLOC_LIMIT=268435456 # default: 16777216 (16MB)
# Malloc upper limit for factor increase
export RUBY_GC_MALLOC_LIMIT_MAX=0 # default: 33554432 (32MB)
export RUBY_GC_MALLOC_LIMIT_GROWTH_FACTOR=2 # default: 1.4


# The old generation memory growth limit to trigger MAJOR gc
export RUBY_GC_OLDMALLOC_LIMIT=536870912 # default: 16777216 (16MB)
export RUBY_GC_OLDMALLOC_LIMIT_MAX=1073741824 # default: 134217728 (128MB)
# Factor to control major GC timing
export RUBY_GC_OLDMALLOC_LIMIT_GROWTH_FACTOR=4 # default: 2
# Trigger Major GC of number of oldobjects is x times bigger than on last MGC
export RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR=1.5
