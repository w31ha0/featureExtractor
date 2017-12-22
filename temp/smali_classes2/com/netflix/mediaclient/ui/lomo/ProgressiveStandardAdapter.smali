.class public Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;
.source "ProgressiveStandardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
        ">",
        "Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
            "<TV;>;",
            "Lcom/netflix/mediaclient/servicemgr/ServiceManager;",
            "Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;-><init>(Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected fetchMoreData(II)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;->getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "standard lomo pager - no lomo data to use for fetch request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;->getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;

    const-string/jumbo v1, "BaseProgressiveRowAdapter"

    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;Ljava/lang/String;II)V

    .line 39
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveStandardAdapter;->getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v6

    move-object v2, v7

    move v3, p1

    move v4, p2

    move v5, v8

    move v7, v8

    move-object v8, v0

    invoke-interface/range {v1 .. v8}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method
