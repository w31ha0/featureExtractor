.class public Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;
.super Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.source "ShowDetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
.implements Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListenerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;-><init>()V

    return-void
.end method

.method private shouldHideDetailsView()Z
    .locals 1

    .prologue
    .line 69
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 52
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;->shouldRenderTabs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag_Ab7994;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag_Ab7994;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->mLaunchedByModalViewId:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->create(Ljava/lang/String;Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    move-result-object v0

    goto :goto_0
.end method

.method protected createSecondaryFrag()Landroid/app/Fragment;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;->shouldRenderTabs(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getEpisodeId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->shouldHideDetailsView()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    .line 64
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getEpisodeId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->shouldHideDetailsView()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method protected dataReady(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;->dataReady(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 48
    :cond_0
    return-void
.end method

.method public getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getEpisodeRowListener()Lcom/netflix/mediaclient/ui/details/AbsEpisodeView$EpisodeRowListener;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    move-object p0, v0

    .line 79
    :cond_0
    return-object p0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 94
    if-eqz p2, :cond_0

    .line 95
    const-string/jumbo v0, "Display episodes dialog"

    invoke-interface {p2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 106
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 107
    return-void
.end method

.method public onEpisodeSelectedForPlayback(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 1

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/ui/common/PlaybackLauncher;->startPlaybackAfterPIN(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 85
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->setupFrags()V

    .line 29
    return-void
.end method

.method protected setupFrags()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    .line 34
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->shouldHideDetailsView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getPrimaryFragContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 36
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setDetailViewGroupVisibility(I)V

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getPrimaryFragContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 40
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setDetailViewGroupVisibility(I)V

    goto :goto_0
.end method
