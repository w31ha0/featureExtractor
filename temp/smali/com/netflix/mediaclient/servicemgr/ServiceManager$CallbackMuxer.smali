.class Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# instance fields
.field private final muxedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1924
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->muxedCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;)V
    .locals 0

    .prologue
    .line 1923
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized demuxCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 3

    .prologue
    .line 1939
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->muxedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;

    .line 1940
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->getRequestId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1941
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->muxedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1942
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->getDemuxedCallback()Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1945
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1939
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized muxCallback(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I
    .locals 2

    .prologue
    .line 1930
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;-><init>(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V

    .line 1931
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->muxedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->getRequestId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1930
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 1949
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->muxedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1950
    monitor-exit p0

    return-void

    .line 1949
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
