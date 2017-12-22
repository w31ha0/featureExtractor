.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;
.super Ljava/lang/Object;
.source "CastPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetUiListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleSeekbarUpdate(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V
    .locals 4

    .prologue
    .line 999
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2000()Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->controlsEnabled:Z

    if-nez v0, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getPositionInSeconds()I

    move-result v0

    if-ltz v0, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Update video seekbar - pos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    iget v1, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setProgress(I)V

    .line 1008
    :cond_2
    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->buffering:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    if-eqz v0, :cond_4

    .line 1009
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    goto :goto_0

    .line 1011
    :cond_4
    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    iget v1, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->positionInSeconds:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2300(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;J)V

    goto :goto_0
.end method

.method private isErrorRequireDisableControl(I)Z
    .locals 1

    .prologue
    .line 1052
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelDialog()V
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->removeVisibleDialog()V

    goto :goto_0
.end method

.method public endOfPlayback()V
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1902(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)Z

    .line 1062
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 1064
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->isNextTitleAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.CAST_PLAYER_POST_PLAY_TITLE_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1069
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2000()Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->reset()V

    .line 1070
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1602(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 1071
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1902(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)Z

    .line 1038
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->handleMdxError(ILjava/lang/String;)V

    .line 1043
    :goto_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->isErrorRequireDisableControl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 1045
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->enableMdxMenu()V

    .line 1046
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerEndOfPlayback()V

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateMdxMenu()V

    .line 1049
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    goto :goto_0
.end method

.method isNextTitleAvailable()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1074
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 1076
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getNextEpisodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    const/4 v0, 0x1

    .line 1083
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1079
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1083
    goto :goto_0
.end method

.method public mdxStateChanged(Z)V
    .locals 0

    .prologue
    .line 1027
    return-void
.end method

.method public onNetworkConnectivityChange(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 965
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetworkConnectivityChange connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    if-nez p1, :cond_0

    .line 969
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->isPlayingRemotely()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1802(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)Z

    .line 971
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1902(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)Z

    .line 972
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 973
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->notifyCastPlayerEndOfPlayback()V

    .line 974
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->updateMdxMenu()V

    goto :goto_0
.end method

.method public showDialog(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)V
    .locals 3

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1143
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->newInstance(Lcom/netflix/mediaclient/ui/mdx/RemoteDialog;)Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;

    move-result-object v0

    .line 1144
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/ShowMessageDialogFrag;->setCancelable(Z)V

    .line 1146
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0
.end method

.method public targetListChanged()V
    .locals 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const-string/jumbo v1, "targetListChanged"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V

    .line 1131
    return-void
.end method

.method public updateDuration(I)V
    .locals 3

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDuration, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V

    .line 1120
    if-lez p1, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setProgressMax(I)V

    goto :goto_0

    .line 1124
    :cond_1
    const-string/jumbo v0, "CastPlayerHelper"

    const-string/jumbo v1, "We received an invalid duration - ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateLanguage(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V

    .line 1111
    return-void
.end method

.method public updateTargetCapabilities(Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;)V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1092
    :cond_0
    if-nez p1, :cond_1

    .line 1093
    const-string/jumbo v0, "CastPlayerHelper"

    const-string/jumbo v1, "Capabilities is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)V

    goto :goto_0

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isVolumeControl()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)V

    goto :goto_0
.end method

.method public updateUi(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 983
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 988
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1902(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Z)Z

    .line 989
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2000()Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    move-result-object v2

    iget v3, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->volume:I

    iput v3, v2, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->mostRecentVolume:I

    .line 991
    iget-boolean v2, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->showMiniPlayer:Z

    .line 992
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    iget-boolean v4, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->paused:Z

    invoke-static {v3, v2, v4, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2100(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;ZZZ)V

    .line 993
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v2

    iget-boolean v3, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->buffering:Z

    if-nez v3, :cond_0

    iget-boolean v3, p1, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;->showMiniPlayer:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    .line 995
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->handleSeekbarUpdate(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer$RemoteTargetState;)V

    .line 996
    return-void

    :cond_0
    move v0, v1

    .line 993
    goto :goto_0
.end method

.method public updateVideoMetadata()V
    .locals 4

    .prologue
    .line 943
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const-string/jumbo v1, "updateVideoMetadata"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1500(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 950
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    .line 951
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1600(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/MdxUtils;->isSameVideoPlaying(Lcom/netflix/mediaclient/servicemgr/IMdx;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    const-string/jumbo v1, "Same video is already playing, doing nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_1
    if-nez v1, :cond_2

    .line 955
    const-string/jumbo v0, "CastPlayerHelper"

    const-string/jumbo v1, "null video details provided by mdx agent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Different video, updating to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1700(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    goto :goto_0
.end method
