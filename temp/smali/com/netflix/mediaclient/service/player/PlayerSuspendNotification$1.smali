.class Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "PlayerSuspendNotification.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

.field final synthetic val$movieId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->val$movieId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFalkorVideoFetched(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    if-nez p1, :cond_0

    .line 69
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FlakorVideo for %s in null."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->val$movieId:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 89
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->isPlayableEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$200(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09010b

    new-array v3, v8, [Ljava/lang/Object;

    .line 74
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 75
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 76
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$102(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$302(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%s is episode %s : %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->val$movieId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$300(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$100(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getHighResolutionPortraitBoxArtUrl()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$400(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$102(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$302(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%s is movie %s "

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->val$movieId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$300(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 87
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fail to fetch FlakorVideo for %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;->val$movieId:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0
.end method
