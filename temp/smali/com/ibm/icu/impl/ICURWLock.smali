.class public Lcom/ibm/icu/impl/ICURWLock;
.super Ljava/lang/Object;
.source "ICURWLock.java"


# instance fields
.field private rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private stats:Lcom/ibm/icu/impl/ICURWLock$Stats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;

    return-void
.end method


# virtual methods
.method public acquireRead()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;

    if-eqz v0, :cond_2

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;

    iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_rc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_rc:I

    .line 140
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;

    iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_mrc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_mrc:I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;

    iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wrc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wrc:I

    .line 146
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 149
    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public acquireWrite()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;

    if-eqz v0, :cond_2

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;

    iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wc:I

    .line 178
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->stats:Lcom/ibm/icu/impl/ICURWLock$Stats;

    iget v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wwc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ibm/icu/impl/ICURWLock$Stats;->_wwc:I

    .line 181
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 184
    return-void

    .line 181
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public releaseRead()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 161
    return-void
.end method

.method public releaseWrite()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ibm/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 197
    return-void
.end method
