.class Lcom/netflix/falkor/cache/FalkorCacheMonitor$2;
.super Ljava/lang/Object;
.source "FalkorCacheMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$2;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$2;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->access$200(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)Lio/realm/Realm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$2;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-static {v1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->access$200(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/Realm;->getConfiguration()Lio/realm/RealmConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 78
    iget-object v2, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$2;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    iget-object v2, v2, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->realmFileSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$2;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    iget-object v2, v2, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->realmFileSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 80
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$2;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    sget-object v1, Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;->FileSize:Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->access$300(Lcom/netflix/falkor/cache/FalkorCacheMonitor;Lcom/netflix/falkor/cache/FalkorCacheMonitor$DataUpdated;)V

    .line 86
    :cond_0
    return-void
.end method
