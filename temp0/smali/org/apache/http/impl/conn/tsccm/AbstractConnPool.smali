.class public abstract Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lorg/apache/http/impl/conn/tsccm/RefQueueHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

.field protected volatile isShutDown:Z

.field protected issuedConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntryRef;",
            ">;"
        }
    .end annotation
.end field

.field protected leasedConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/apache/http/annotation/GuardedBy;
        value = "poolLock"
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;

.field protected numConnections:I
    .annotation build Lorg/apache/http/annotation/GuardedBy;
        value = "poolLock"
    .end annotation
.end field

.field protected final poolLock:Ljava/util/concurrent/locks/Lock;

.field protected refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->leasedConnections:Ljava/util/Set;

    .line 92
    new-instance v0, Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    .line 93
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    .line 94
    return-void
.end method


# virtual methods
.method protected closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V
    .locals 3
    .param p1, "conn"    # Lorg/apache/http/conn/OperatedClientConnection;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 226
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "I/O error closing connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public closeExpiredConnections()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->closeExpiredConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "idletime"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 162
    if-nez p3, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Time unit must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->closeIdleConnections(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 172
    return-void

    .line 170
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public abstract deleteClosedConnections()V
.end method

.method public enableConnectionGC()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method public abstract freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V
.end method

.method public final getEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    invoke-interface {v0, p3, p4, p5}, Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    move-result-object v0

    return-object v0
.end method

.method protected abstract handleLostEntry(Lorg/apache/http/conn/routing/HttpRoute;)V
.end method

.method public handleReference(Ljava/lang/ref/Reference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    return-void
.end method

.method public abstract requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 195
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 215
    :goto_0
    return-void

    .line 202
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->leasedConnections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    .line 205
    .local v0, "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 206
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeConnection(Lorg/apache/http/conn/OperatedClientConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 213
    .end local v0    # "entry":Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 208
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;>;"
    :cond_1
    :try_start_2
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->idleConnHandler:Lorg/apache/http/impl/conn/IdleConnectionHandler;

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/IdleConnectionHandler;->removeAll()V

    .line 210
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->isShutDown:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->poolLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method
