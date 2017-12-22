.class final Lcom/netflix/falkor/cache/FalkorCache$LruBackup$1;
.super Ljava/lang/Object;
.source "FalkorCache.java"

# interfaces
.implements Lcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoved(Ljava/lang/String;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 350
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->access$200()[Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 351
    :try_start_0
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->access$300()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 352
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->access$600()Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;->access$700(Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 354
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->access$600()Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;->access$700(Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->access$600()Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;->access$700(Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 356
    return-void

    .line 352
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
