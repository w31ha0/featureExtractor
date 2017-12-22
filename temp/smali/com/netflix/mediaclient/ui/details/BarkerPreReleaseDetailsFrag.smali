.class public Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;
.source "BarkerPreReleaseDetailsFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BarkerPreReleaseDetailsFrag"


# instance fields
.field private isMovie:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->isMovie:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;)Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->showDetailsView(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;)Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public static create(Ljava/lang/String;Z)Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    const-string/jumbo v2, "video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v2, "extra_is_movie"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method protected fetchMovieData()V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->isMovie:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->fetchMovieData()V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->fetchShowData()V

    goto :goto_0
.end method

.method protected fetchShowData()V
    .locals 8

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    const-string/jumbo v0, "BarkerPreReleaseDetailsFrag"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->isLoading:Z

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->requestId:J

    .line 109
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->videoId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;

    iget-wide v6, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->requestId:J

    invoke-direct {v4, p0, v6, v7}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$FetchShowDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;J)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method protected initDetailsViewGroup(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag$BarkerPreReleaseVideoDetailsViewGroup;-><init>(Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showRelatedTitle()V

    .line 71
    return-void
.end method

.method isSupplementalMessageAvailable()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->getVideoDetails()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_is_movie"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->isMovie:Z

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected showSimsItems(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/BarkerPreReleaseDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->hideRelatedTitle()V

    .line 79
    return-void
.end method

.method protected updateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
