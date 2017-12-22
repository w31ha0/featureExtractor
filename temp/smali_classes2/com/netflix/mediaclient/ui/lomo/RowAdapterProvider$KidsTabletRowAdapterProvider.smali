.class public Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;
.super Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;
.source "RowAdapterProvider.java"


# instance fields
.field private final character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final kubrickGallery:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

.field private final manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)V
    .locals 3

    .prologue
    .line 130
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;-><init>(Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    .line 131
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 133
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveCwAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveCwAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 134
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->kubrickGallery:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;

    new-instance v1, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {v0, v1, v2, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    .line 137
    return-void
.end method


# virtual methods
.method public bridge synthetic getBillboardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getBillboardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->character:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public getCwAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->cw:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getErrorAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getIqAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-10196: My List is not supported in Kids profile, but handle request to avoid crash. LOLOMO_ID - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->manager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 163
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->getLolomoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 161
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->iq:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method

.method public bridge synthetic getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$DefaultRowAdapterProvider;->getLoadingAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getStandardAdapter()Lcom/netflix/mediaclient/ui/lomo/RowAdapter;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;->kubrickGallery:Lcom/netflix/mediaclient/ui/lomo/RowAdapter;

    return-object v0
.end method
