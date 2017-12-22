.class Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "NetflixComWatchHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$targetDialUuid:Ljava/lang/String;

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$videoId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$targetDialUuid:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$trackId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 81
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/Video$Summary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$videoId:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$targetDialUuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$trackId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->playVideo(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-7518 - got error trying to fetch video summary for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$videoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$1;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    goto :goto_0
.end method
