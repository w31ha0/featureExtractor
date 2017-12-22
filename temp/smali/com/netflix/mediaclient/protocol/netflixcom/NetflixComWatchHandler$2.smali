.class Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "NetflixComWatchHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field final synthetic val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

.field final synthetic val$targetDialUuid:Ljava/lang/String;

.field final synthetic val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    iput-object p4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p5, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$targetDialUuid:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 163
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->this$0:Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$playable:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$targetDialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler$2;->val$playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComWatchHandler;->play(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 170
    return-void
.end method
