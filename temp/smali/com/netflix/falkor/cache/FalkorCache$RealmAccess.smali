.class public Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;
.super Ljava/lang/Object;
.source "FalkorCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FalkorCache.RealmAccess"

.field private static final sAccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sThreadInTransaction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sAccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 146
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sThreadInTransaction:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginTransaction(Lio/realm/Realm;)V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lio/realm/Realm;->beginTransaction()V

    .line 192
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sThreadInTransaction:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public static cancelTransaction(Lio/realm/Realm;)V
    .locals 2

    .prologue
    .line 203
    const-string/jumbo v0, "FalkorCache.RealmAccess"

    const-string/jumbo v1, "cancelled a transaction"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lio/realm/Realm;->cancelTransaction()V

    .line 205
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sThreadInTransaction:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public static close(Lio/realm/Realm;)V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 161
    return-void
.end method

.method public static commitTransaction(Lio/realm/Realm;)V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lio/realm/Realm;->commitTransaction()V

    .line 198
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sThreadInTransaction:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method private static doExecuteTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;Z)V
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sAccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 216
    if-nez p2, :cond_0

    .line 217
    :try_start_0
    invoke-virtual {p0, p1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sAccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 224
    return-void

    .line 219
    :cond_0
    :try_start_1
    invoke-interface {p1, p0}, Lio/realm/Realm$Transaction;->execute(Lio/realm/Realm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sAccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method public static executeTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V
    .locals 1

    .prologue
    .line 209
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->isThreadInTransaction()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->doExecuteTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;Z)V

    .line 210
    return-void
.end method

.method public static getInstance()Lio/realm/Realm;
    .locals 2

    .prologue
    .line 150
    :try_start_0
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache;->sRealmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string/jumbo v1, "FalkorCache instance "

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache;->sRealmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->deleteRealm(Lio/realm/RealmConfiguration;)Z

    .line 155
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache;->sRealmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v0

    goto :goto_0
.end method

.method private static isThreadInTransaction()Z
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sThreadInTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sThreadInTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static purge()V
    .locals 8

    .prologue
    .line 164
    const-string/jumbo v0, "FalkorCache.RealmAccess"

    const-string/jumbo v1, "purging cache"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sAccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    :try_start_0
    const-string/jumbo v0, "FalkorCache.RealmAccess"

    const-string/jumbo v1, "Purge waiting due to accessCount=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->sAccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string/jumbo v0, "FalkorCache.RealmAccess"

    const-string/jumbo v1, "Purge wait interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_0
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache;->sRealmConfiguration:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;

    move-result-object v2

    const/4 v1, 0x0

    .line 177
    :try_start_1
    new-instance v0, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess$1;

    invoke-direct {v0}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess$1;-><init>()V

    invoke-virtual {v2, v0}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 183
    const-string/jumbo v0, "FalkorCache.RealmAccess"

    const-string/jumbo v3, "purged cache empty=%b"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lio/realm/Realm;->isEmpty()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 186
    :cond_1
    :goto_1
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->access$000()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->resetAll()V

    .line 187
    return-void

    .line 184
    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    goto :goto_1

    .line 176
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v2}, Lio/realm/Realm;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lio/realm/Realm;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method
