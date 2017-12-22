.class Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;
.source "KidsCharacterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter",
        "<",
        "Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;",
        "Lcom/netflix/model/branches/FalkorKidsCharacter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KidsCharacterAdapter"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method getNumberOfLoadingMorePlaceHolder()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->setLoadingData(Z)V

    .line 57
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getLomo()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getFromIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getFromIndex()I

    move-result v3

    invoke-static {p1, v3}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->computeEndIndex(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v5

    new-instance v7, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;

    const-string/jumbo v6, "KidsCharacterAdapter"

    invoke-direct {v7, p0, v6, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 87
    :cond_0
    return-void
.end method

.method protected bridge synthetic onBindLoadingMore(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;IZ)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->onBindLoadingMore(Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;IZ)V

    return-void
.end method

.method protected onBindLoadingMore(Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;IZ)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getLomoContext()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->loading(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;IZ)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onBindVideo(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;

    check-cast p2, Lcom/netflix/model/branches/FalkorKidsCharacter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->onBindVideo(Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;Lcom/netflix/model/branches/FalkorKidsCharacter;IZ)V

    return-void
.end method

.method protected onBindVideo(Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;Lcom/netflix/model/branches/FalkorKidsCharacter;IZ)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getLomoContext()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;->bind(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/model/branches/FalkorKidsCharacter;IZ)V

    .line 105
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;
    .locals 4

    .prologue
    const v3, 0x7f1001f1

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;->setId(I)V

    .line 50
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$KidsCharacterViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterView;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    return-object v1
.end method
