.class public Lcom/mopub/common/event/MoPubEvents;
.super Ljava/lang/Object;
.source "MoPubEvents.java"


# static fields
.field private static volatile sEventDispatcher:Lcom/mopub/common/event/EventDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDispatcher()Lcom/mopub/common/event/EventDispatcher;
    .locals 7
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 40
    sget-object v2, Lcom/mopub/common/event/MoPubEvents;->sEventDispatcher:Lcom/mopub/common/event/EventDispatcher;

    .line 41
    .local v2, "result":Lcom/mopub/common/event/EventDispatcher;
    if-nez v2, :cond_1

    .line 42
    const-class v5, Lcom/mopub/common/event/MoPubEvents;

    monitor-enter v5

    .line 43
    :try_start_0
    sget-object v2, Lcom/mopub/common/event/MoPubEvents;->sEventDispatcher:Lcom/mopub/common/event/EventDispatcher;

    .line 44
    if-nez v2, :cond_0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "recorders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/common/event/EventRecorder;>;"
    new-instance v0, Landroid/os/HandlerThread;

    const-string v4, "mopub_event_logging"

    invoke-direct {v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v4, Lcom/mopub/common/event/ScribeEventRecorder;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/mopub/common/event/ScribeEventRecorder;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v3, Lcom/mopub/common/event/EventDispatcher;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/mopub/common/event/EventDispatcher;-><init>(Ljava/lang/Iterable;Landroid/os/Looper;)V

    sput-object v3, Lcom/mopub/common/event/MoPubEvents;->sEventDispatcher:Lcom/mopub/common/event/EventDispatcher;

    .end local v2    # "result":Lcom/mopub/common/event/EventDispatcher;
    .local v3, "result":Lcom/mopub/common/event/EventDispatcher;
    move-object v2, v3

    .line 51
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v1    # "recorders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mopub/common/event/EventRecorder;>;"
    .end local v3    # "result":Lcom/mopub/common/event/EventDispatcher;
    .restart local v2    # "result":Lcom/mopub/common/event/EventDispatcher;
    :cond_0
    monitor-exit v5

    .line 53
    :cond_1
    return-object v2

    .line 51
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static log(Lcom/mopub/common/event/BaseEvent;)V
    .locals 1
    .param p0, "baseEvent"    # Lcom/mopub/common/event/BaseEvent;

    .prologue
    .line 21
    invoke-static {}, Lcom/mopub/common/event/MoPubEvents;->getDispatcher()Lcom/mopub/common/event/EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/event/EventDispatcher;->dispatch(Lcom/mopub/common/event/BaseEvent;)V

    .line 22
    return-void
.end method

.method public static setEventDispatcher(Lcom/mopub/common/event/EventDispatcher;)V
    .locals 0
    .param p0, "dispatcher"    # Lcom/mopub/common/event/EventDispatcher;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 26
    sput-object p0, Lcom/mopub/common/event/MoPubEvents;->sEventDispatcher:Lcom/mopub/common/event/EventDispatcher;

    .line 27
    return-void
.end method
