.class Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;
.source "BillboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter",
        "<",
        "Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillboardAdapter"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 38
    return-void
.end method


# virtual methods
.method protected loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->setLoadingData(Z)V

    .line 45
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->getLomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v10

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->getLomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result v11

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v7

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;

    const-string/jumbo v1, "BillboardAdapter"

    new-instance v2, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;

    invoke-direct {v2, p0, v8, v9}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;J)V

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->getLomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->getLomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v5

    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getNumVideos()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;Ljava/lang/String;II)V

    move-object v2, v6

    move-object v3, v10

    move v5, v11

    move v6, v4

    move v8, v4

    move-object v9, v0

    .line 45
    invoke-interface/range {v2 .. v9}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 71
    :cond_0
    return-void
.end method

.method protected bridge synthetic onBindLoadingMore(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;IZ)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->onBindLoadingMore(Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;IZ)V

    return-void
.end method

.method protected onBindLoadingMore(Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;IZ)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected bridge synthetic onBindVideo(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->onBindVideo(Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;IZ)V

    return-void
.end method

.method protected onBindVideo(Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;IZ)V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p1, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;->billboardView:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->getLomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    .line 88
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;
    .locals 4

    .prologue
    const v3, 0x7f100008

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView_Ab7814;-><init>(Landroid/content/Context;)V

    .line 81
    :goto_0
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setId(I)V

    .line 82
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    return-object v1

    .line 79
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
