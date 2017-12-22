.class public Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;
.super Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;
.source "ExpiringContentAdvisor.java"


# instance fields
.field private controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)V

    .line 17
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->dismiss()V

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;->controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isBrowseValid(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;->controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;->controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->NEVER_SHOW_AGAIN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    .line 31
    :cond_0
    return-void
.end method

.method public setController(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;->controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 21
    return-void
.end method

.method protected showInternal()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/advisor/TwoLineAdvisor;->showInternal()V

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;->controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->isBrowseValid(Lcom/netflix/mediaclient/android/fragment/NetflixFrag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;->controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/advisor/ExpiringContentAdvisor;->controller:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getCurrentAsset()Lcom/netflix/mediaclient/servicemgr/Asset;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;->LOG_WHEN_SHOWN:Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    .line 41
    :cond_0
    return-void
.end method
