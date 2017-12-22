.class Lcom/netflix/mediaclient/service/NetflixService$11;
.super Landroid/content/BroadcastReceiver;
.source "NetflixService.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 1672
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMdxAgentVideoAsset()Lcom/netflix/mediaclient/servicemgr/Asset;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1728
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$1800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/NetflixService;->access$1800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->getVideoDetail()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 1729
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1730
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->create(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;Z)Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 1732
    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 1728
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0x1b77400

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1675
    .line 1677
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1678
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKEND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1680
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v2, "mdx exit, stop service in %sms"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1682
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0, v6, v7}, Lcom/netflix/mediaclient/service/NetflixService;->access$2300(Lcom/netflix/mediaclient/service/NetflixService;J)V

    .line 1684
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService$11;->getMdxAgentVideoAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 1685
    if-eqz v0, :cond_5

    .line 1686
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v2

    .line 1687
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPreviewProtected()Z

    move-result v0

    .line 1689
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(ZZ)V

    .line 1693
    const-string/jumbo v0, "updateCW"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v2, "Refreshing CW for MDXUPDATE_PLAYBACKEND..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const-string/jumbo v0, "mdx.cw.refresh"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshCw(Z)V

    .line 1725
    :cond_0
    :goto_1
    return-void

    .line 1698
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_PLAYBACKSTART"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1699
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1800(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/MdxAgent;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1700
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "start mdx notification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$2400(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 1703
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService$11;->getMdxAgentVideoAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v0

    .line 1704
    if-eqz v0, :cond_0

    .line 1705
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "refreshing episodes data on play start"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->refreshEpisodeData(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    goto :goto_1

    .line 1709
    :cond_2
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "false MDXUPDATE_PLAYBACKSTART"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1711
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDXUPDATE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    const-string/jumbo v0, "time"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1713
    const-string/jumbo v2, "NetflixService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on MDX state update - received updated mdx position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NetflixService$11;->getMdxAgentVideoAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v2

    .line 1716
    if-eqz v2, :cond_4

    .line 1717
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/servicemgr/Asset;->setPlaybackBookmark(I)V

    .line 1718
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "updating cached video position"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$11;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;->updateCachedVideoPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 1720
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPinProtected()Z

    move-result v0

    .line 1721
    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Asset;->isPreviewProtected()Z

    move-result v1

    .line 1723
    :goto_2
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->registerPlayEvent(ZZ)V

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    move v2, v1

    goto/16 :goto_0
.end method
