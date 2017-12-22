.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$1;)V
    .locals 0

    .prologue
    .line 1197
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;-><init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$ProgressWatchRunnable;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$900(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    .line 1201
    return-void
.end method
