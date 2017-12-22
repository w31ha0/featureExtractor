.class public final Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 0

    .prologue
    .line 1545
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1549
    if-nez p2, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1552
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1557
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1559
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2400(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1560
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "Starting userProfile fetch "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->getCurrentProfileGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->fetchProfileData(Ljava/lang/String;)V

    .line 1564
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$3200(Lcom/netflix/mediaclient/service/user/UserAgent;)Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->onPlayEnd()V

    goto :goto_0

    .line 1566
    :cond_2
    const-string/jumbo v0, "nf_service_useragent"

    const-string/jumbo v1, "canDoDataFetches false - skipping fetchProfileData request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1569
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DELETED_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1570
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$2402(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    .line 1571
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/service/user/UserAgent;->onAccountErrors(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)V

    goto :goto_0

    .line 1573
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$UserAgentEventReceiver;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->access$3300(Lcom/netflix/mediaclient/service/user/UserAgent;)V

    goto :goto_0
.end method
