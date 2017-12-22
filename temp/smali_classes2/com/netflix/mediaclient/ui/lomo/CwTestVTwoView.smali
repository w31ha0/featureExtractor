.class public Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;
.super Lcom/netflix/mediaclient/ui/lomo/CwView;
.source "CwTestVTwoView.java"


# instance fields
.field episodeInfo:Landroid/widget/TextView;

.field showEpisodeInfo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/CwView;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->showEpisodeInfo:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f030039

    return v0
.end method

.method public setInfoViewId(I)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->info:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 42
    return-void
.end method

.method public setTitle(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 50
    invoke-super/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/lomo/CwView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    .line 51
    const v0, 0x7f100172

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->episodeInfo:Landroid/widget/TextView;

    .line 53
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->episodeInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09018c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 55
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getEpisodeNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->episodeInfo:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->showEpisodeInfo:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->episodeInfo:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 24
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/CwTestVTwoView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method
