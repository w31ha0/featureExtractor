.class Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/servicemgr/ServiceManager$1;)V
    .locals 0

    .prologue
    .line 1100
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-void
.end method

.method private logShowDetailsInfo(Lcom/netflix/mediaclient/android/app/Status;ILcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 3

    .prologue
    .line 1588
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShowDetailsFetched requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShowDetailsFetched requestedSdp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilars()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1591
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShowDetailsFetched sims size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilars()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShowDetailsFetched sims track id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilarsTrackId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_0
    return-void
.end method

.method private updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V
    .locals 1

    .prologue
    .line 1910
    instance-of v0, p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    if-eqz v0, :cond_0

    .line 1911
    check-cast p1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setRequestId(I)V

    .line 1913
    :cond_0
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .prologue
    .line 1798
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1799
    if-gez v0, :cond_0

    .line 1800
    neg-int v0, v0

    .line 1802
    :cond_0
    return v0
.end method

.method public onActorDetailsAndRelatedFetched(ILjava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorPerson;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorActorStill;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1553
    invoke-direct {p0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1555
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1556
    if-nez v0, :cond_0

    .line 1557
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onShowDetailsAndSeasonsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :goto_0
    return-void

    .line 1559
    :cond_0
    invoke-interface {v0, p2, p3, p4, p5}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onActorDetailsAndRelatedFetched(Ljava/util/List;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onAdvisoriesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/advisory/Advisory;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1680
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1686
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1687
    if-nez v0, :cond_0

    .line 1688
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onAdvisoriesFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onAllocateABTestCompleted(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1664
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1670
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1671
    if-nez v0, :cond_0

    .line 1672
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onAllocateABTestCompleted requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :goto_0
    return-void

    .line 1674
    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onAllocateABTestCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onAutoLoginTokenCreated(ILjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1889
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1895
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1896
    if-nez v0, :cond_0

    .line 1897
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onAutoLoginTokenCreated requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :goto_0
    return-void

    .line 1899
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onAvailableAvatarsListFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1841
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1847
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1848
    if-nez v0, :cond_0

    .line 1849
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onAvailableAvatarsListFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    :goto_0
    return-void

    .line 1851
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onAvailableAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onBBVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1824
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1831
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1832
    if-nez v0, :cond_0

    .line 1833
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onBBVideosFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :goto_0
    return-void

    .line 1835
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onBBVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onCWVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1434
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1441
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1442
    if-nez v0, :cond_0

    .line 1443
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onCWVideosFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :goto_0
    return-void

    .line 1445
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onEpisodeDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1383
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1390
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1391
    if-nez v0, :cond_0

    .line 1392
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onEpisodeDetailsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :goto_0
    return-void

    .line 1394
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onEpisodesFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1486
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1493
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1494
    if-nez v0, :cond_0

    .line 1495
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onEpisodesFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :goto_0
    return-void

    .line 1497
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onFalkorVideoFetched(ILcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1307
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1314
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1315
    if-nez v0, :cond_0

    .line 1316
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onFalkorVideoFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :goto_0
    return-void

    .line 1318
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onFalkorVideoFetched(Lcom/netflix/model/branches/FalkorVideo;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onGenreListsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1598
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1605
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1606
    if-nez v0, :cond_0

    .line 1607
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onGenreListsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :goto_0
    return-void

    .line 1609
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onGenreListsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onGenreLoLoMoPrefetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1141
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1146
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1147
    if-nez v0, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1152
    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onGenreLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onGenresFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1615
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1622
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1623
    if-nez v0, :cond_0

    .line 1624
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onGenresFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :goto_0
    return-void

    .line 1626
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onGenresFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onInteractiveMomentsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1400
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1407
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1408
    if-nez v0, :cond_0

    .line 1409
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onInteractiveMomentsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :goto_0
    return-void

    .line 1411
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onInteractiveMomentsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/InteractiveMoments;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onIrisNotificationsListFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1857
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1863
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1864
    if-nez v0, :cond_0

    .line 1865
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onIrisNotificationsListFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :goto_0
    return-void

    .line 1867
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onKidsCharacterDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1363
    invoke-direct {p0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1374
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1375
    if-nez v0, :cond_0

    .line 1376
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onKidsCharacterDetailsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :goto_0
    return-void

    .line 1378
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoLoMoPrefetched(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1124
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1129
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1130
    if-nez v0, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1135
    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onLoLoMoPrefetched(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoLoMoSummaryFetched(ILcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1197
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1203
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1204
    if-nez v0, :cond_0

    .line 1205
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onLoLoMoSummaryFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :goto_0
    return-void

    .line 1207
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onLoLoMoSummaryFetched(Lcom/netflix/mediaclient/servicemgr/interface_/LoLoMo;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoMosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1158
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1166
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1167
    if-nez v0, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1172
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onLoMosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoginComplete(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1259
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1265
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1266
    if-nez v0, :cond_0

    .line 1267
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onLoginComplete requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :goto_0
    return-void

    .line 1269
    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLogoutComplete(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1275
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1280
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1281
    if-nez v0, :cond_0

    .line 1282
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onLogoutComplete requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :goto_0
    return-void

    .line 1284
    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onMovieDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1324
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1335
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1336
    if-nez v0, :cond_0

    .line 1337
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onMovieDetailsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :goto_0
    return-void

    .line 1339
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onOnRampEligibilityAction(ILcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1696
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1702
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1703
    if-nez v0, :cond_0

    .line 1704
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for doOnRampEligibilityAction requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :goto_0
    return-void

    .line 1706
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onPersonDetailFetched(ILcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1565
    invoke-direct {p0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1567
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1568
    if-nez v0, :cond_0

    .line 1569
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onPersonDetailFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :goto_0
    return-void

    .line 1571
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onPersonDetailFetched(Lcom/netflix/model/branches/FalkorPerson;Lcom/netflix/model/branches/FalkorActorStill;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onPersonRelatedFetched(ILcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netflix/model/branches/FalkorPerson;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1577
    invoke-direct {p0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1579
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1580
    if-nez v0, :cond_0

    .line 1581
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onPersonDetailFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :goto_0
    return-void

    .line 1583
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onPersonRelatedFetched(Lcom/netflix/model/branches/FalkorPerson;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onPostPlayImpressionLogged(IZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1468
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1475
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1476
    if-nez v0, :cond_0

    .line 1477
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onPostPlayImpressionLogged requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :goto_0
    return-void

    .line 1479
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onPostPlayVideosFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1451
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1458
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1459
    if-nez v0, :cond_0

    .line 1460
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onPostPlayVideoFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :goto_0
    return-void

    .line 1462
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onProfileListUpdateStatus(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1873
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1879
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1880
    if-nez v0, :cond_0

    .line 1881
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onProfileListUpdateStatus requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :goto_0
    return-void

    .line 1883
    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onProfileListUpdateStatus(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onQueueAdd(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1712
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1718
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1719
    if-nez v0, :cond_0

    .line 1720
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onQueueAdd requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :goto_0
    return-void

    .line 1722
    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onQueueAdd(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onQueueRemove(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1728
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1734
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1735
    if-nez v0, :cond_0

    .line 1736
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onQueueRemove requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :goto_0
    return-void

    .line 1738
    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onQueueRemove(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onResourceCached(ILjava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 12

    .prologue
    .line 1229
    move-object/from16 v0, p8

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1235
    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$500(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->demuxCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v3

    .line 1236
    if-nez v3, :cond_0

    .line 1237
    const-string/jumbo v2, "ServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No callback for onResourceCached requestId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :goto_0
    return-void

    :cond_0
    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    .line 1239
    invoke-interface/range {v3 .. v10}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onResourceFetched(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1213
    invoke-direct {p0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1219
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$500(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->demuxCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1220
    if-nez v0, :cond_0

    .line 1221
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onResourceFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :goto_0
    return-void

    .line 1223
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onResourceRawFetched(ILjava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$500(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer;->demuxCallback(I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1250
    if-nez v0, :cond_0

    .line 1251
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onResourceRawFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :goto_0
    return-void

    .line 1253
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onScenePositionFetched(IILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1346
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1353
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1354
    if-nez v0, :cond_0

    .line 1355
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onScenePositionFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :goto_0
    return-void

    .line 1357
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onScenePositionFetched(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSearchResultsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1760
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1767
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1768
    if-nez v0, :cond_0

    .line 1769
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onSearchResultsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :goto_0
    return-void

    .line 1771
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onSearchResultsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/ISearchResults;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSeasonDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1417
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1424
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1425
    if-nez v0, :cond_0

    .line 1426
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onSeasonDetailsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :goto_0
    return-void

    .line 1428
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSeasonsFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1503
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1510
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1511
    if-nez v0, :cond_0

    .line 1512
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onSeasonsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :goto_0
    return-void

    .line 1514
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onSeasonsFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onServiceReady(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$102(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)I

    .line 1110
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$200(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_0

    .line 1112
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$302(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)Z

    .line 1114
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-interface {v0, v1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-interface {v0, v1, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onShowDetailsAndSeasonsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1537
    invoke-direct {p0, p4, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1543
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1544
    if-nez v0, :cond_0

    .line 1545
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onShowDetailsAndSeasonsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :goto_0
    return-void

    .line 1547
    :cond_0
    invoke-interface {v0, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onShowDetailsFetched(ILcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1521
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1527
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1528
    if-nez v0, :cond_0

    .line 1529
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onShowDetailsFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :goto_0
    return-void

    .line 1531
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSimilarVideosFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1777
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1783
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1784
    if-nez v0, :cond_0

    .line 1785
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onSimilarVideosFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :goto_0
    return-void

    .line 1787
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSurveyFetched(ILcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1648
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1654
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1655
    if-nez v0, :cond_0

    .line 1656
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onSurveyFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :goto_0
    return-void

    .line 1658
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onSurveyFetched(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVerified(IZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1807
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1813
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1814
    if-nez v0, :cond_0

    .line 1815
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onVerified requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :goto_0
    return-void

    .line 1817
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideoHide(ILcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1744
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1750
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1751
    if-nez v0, :cond_0

    .line 1752
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onVideoHide requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :goto_0
    return-void

    .line 1754
    :cond_0
    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onVideoHide(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideoRatingSet(ILcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1632
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1638
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1639
    if-nez v0, :cond_0

    .line 1640
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onVideoRatingSet requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :goto_0
    return-void

    .line 1642
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onVideoRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideoSummaryFetched(ILcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1290
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1297
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1298
    if-nez v0, :cond_0

    .line 1299
    const-string/jumbo v0, "ServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No callback for onVideoSummaryFetched requestId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :goto_0
    return-void

    .line 1301
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onVideoSummaryFetched(Lcom/netflix/model/leafs/Video$Summary;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVideosFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1178
    invoke-direct {p0, p3, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->updateStatusRequestId(Lcom/netflix/mediaclient/android/app/Status;I)V

    .line 1185
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$ServiceListener;->this$0:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->access$400(Lcom/netflix/mediaclient/servicemgr/ServiceManager;I)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    move-result-object v0

    .line 1186
    if-nez v0, :cond_0

    .line 1193
    :goto_0
    return-void

    .line 1191
    :cond_0
    invoke-interface {v0, p2, p3}, Lcom/netflix/mediaclient/servicemgr/ManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
