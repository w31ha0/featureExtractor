.class Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;
.super Landroid/content/BroadcastReceiver;
.source "MdxAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private doMDXPlayBackEnd(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 966
    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->isInPostPlay(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 967
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: receive MDXUPDATE_PLAYBACKEND"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->stop()V

    .line 970
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 971
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    .line 972
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 973
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->targetBecomeInactive(Ljava/lang/String;)V

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/SwitchTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/SwitchTarget;->targetPlaybackStopped(Ljava/lang/String;)V

    .line 980
    :cond_1
    return-void
.end method

.method private doMDXPlaybackStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 934
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v1, "MdxAgent: receive MDXUPDATE_PLAYBACKSTART"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxSessionWatchDog;->start()V

    .line 936
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 938
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 942
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 943
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    .line 945
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setState(ZZZ)V

    .line 947
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setBoxart(Landroid/graphics/Bitmap;)V

    .line 955
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 956
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    .line 955
    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V

    .line 957
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v0

    invoke-interface {v0, v3, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setPlayerStateNotify(ZZ)V

    .line 958
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setBoxartNotify(Landroid/graphics/Bitmap;)V

    .line 960
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/TargetSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->targetBecomeActive(Ljava/lang/String;)V

    .line 963
    :cond_1
    return-void

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->startMediaSession()V

    goto :goto_0
.end method

.method private doMDXPostPlay(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 870
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "postplayState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 873
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInCountdown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 876
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->doMDXPostPlayCountdownStart(Landroid/content/Intent;Ljava/lang/String;)V

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInPrompt()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->doMDXPostPlayPrompt(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doMDXPostPlayCountdownStart(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 886
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 887
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->updateVideoIdsForPostplay(Ljava/lang/String;)V

    .line 890
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 891
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1400(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->start(ZLcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)V

    .line 893
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setState(ZZZ)V

    .line 899
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 900
    invoke-static {v0, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Z)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    .line 899
    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V

    .line 901
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v0

    invoke-interface {v0, v4, v4, v3}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setUpNextStateNotify(ZZZ)V

    .line 902
    return-void

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateState(ZZ)V

    goto :goto_0
.end method

.method private doMDXPostPlayPrompt(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 905
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    .line 906
    if-eqz v0, :cond_0

    .line 907
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getBrowseAgent()Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    move-result-object v1

    iget v2, v0, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    .line 908
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 909
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->MDX:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    new-instance v4, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;)V

    .line 907
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 930
    :cond_0
    return-void
.end method

.method private dpMDXSimplePlaybackState(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 848
    const-string/jumbo v0, "paused"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 849
    const-string/jumbo v1, "transitioning"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 851
    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->isInPostPlay(Landroid/content/Intent;)Z

    move-result v2

    .line 858
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 859
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v3

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    .line 860
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->setState(ZZZ)V

    .line 866
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->setPlayerStateNotify(ZZ)V

    .line 867
    return-void

    .line 862
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 863
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateState(ZZ)V

    goto :goto_0
.end method

.method private updateVideoIdsForPostplay(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 983
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;-><init>(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->isInCountdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState;->getPostplayTitle()[Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;

    move-result-object v0

    .line 987
    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->isEpisode()Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    .line 988
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->getId()I

    move-result v1

    if-lez v1, :cond_0

    .line 990
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    new-instance v2, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    invoke-direct {v2}, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;-><init>()V

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2502(Lcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    .line 991
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v1

    iput-boolean v4, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->isEpisode:Z

    .line 992
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2500(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/MdxPostplayState$PostplayTitle;->getId()I

    move-result v0

    iput v0, v1, Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;->episodeId:I

    .line 993
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$2600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;ZZ)V

    .line 996
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    const/16 v5, 0x64

    const/16 v3, 0x15

    const/4 v0, 0x0

    .line 783
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->doMDXPlayBackEnd(Landroid/content/Intent;)V

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 788
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->doMDXPlaybackStart()V

    goto :goto_0

    .line 789
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 790
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 791
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getSharedState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;->getMdxPlaybackState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    if-ne v1, v2, :cond_3

    .line 792
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$700(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 794
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->isInPostPlay()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 795
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$800(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 796
    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$900(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;->stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 797
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 798
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1000(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/RemoteControlClientManager;->stop()V

    .line 804
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v1

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 805
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1100(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    move-result-object v1

    const-string/jumbo v2, "volume"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->updateCurrentVolume(IZ)V

    goto/16 :goto_0

    .line 807
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDXUPDATE_POSTPLAY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 808
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->doMDXPostPlay(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 809
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_SIMPLE_PLAYBACKSTATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 811
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->dpMDXSimplePlaybackState(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 813
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    const-string/jumbo v1, "errorCode"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 816
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->stopAllNotifications()V

    .line 817
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 818
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Lcom/netflix/mediaclient/service/mdx/ClientNotifier;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 819
    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$200(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/mdx/ClientNotifier;->getSharedState(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/MdxSharedState;

    move-result-object v2

    .line 820
    if-eqz v2, :cond_9

    .line 823
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Loading:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 824
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->getMdxPlaybackState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object v4

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;->Transitioning:Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    .line 826
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxSharedState;->getMdxPlaybackState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;

    move-result-object v2

    if-ne v3, v2, :cond_8

    .line 827
    :cond_7
    const/4 v0, 0x1

    .line 829
    :cond_8
    if-lt v1, v5, :cond_9

    if-ge v1, v6, :cond_9

    if-eqz v0, :cond_9

    .line 831
    const-string/jumbo v0, "MdxAgent"

    const-string/jumbo v2, "MdxAgent: received error, clear video detail"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$1300(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 839
    :cond_9
    if-lt v1, v5, :cond_a

    if-lt v1, v6, :cond_b

    :cond_a
    const/16 v0, 0xc9

    if-ne v1, v0, :cond_0

    .line 841
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxAgent$6;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->access$600(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    goto/16 :goto_0
.end method
