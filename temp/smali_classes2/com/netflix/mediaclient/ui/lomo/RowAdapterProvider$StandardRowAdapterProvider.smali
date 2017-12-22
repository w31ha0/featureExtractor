.class public Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;
.super Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;
.source "RowAdapterProvider.java"


# instance fields
.field private final billboard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final standard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;-><init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    .line 77
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedBillboardAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveBillboardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->billboard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveCwAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveCwAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 83
    if-eqz p4, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveGenreVideoAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveGenreVideoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->standard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 87
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 92
    :goto_1
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    goto :goto_1
.end method


# virtual methods
.method public getBillboardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->billboard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public getCharacterAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public getCwAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getIqAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getStandardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$StandardRowAdapterProvider;->standard:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method
