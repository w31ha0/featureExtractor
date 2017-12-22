.class public Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BaseProgressiveRowAdapter;
.source "ProgressiveIqAdapter.java"


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
    .locals 8

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;->getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    const-string/jumbo v0, "BaseProgressiveRowAdapter"

    const-string/jumbo v1, "IQ lomo pager - no lomo data to use for fetch request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;->getLoMo()Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/ProgressiveIqAdapter;->getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v6

    .line 37
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v7

    new-instance v0, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;

    const-string/jumbo v1, "BaseProgressiveRowAdapter"

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;Ljava/lang/String;II)V

    .line 36
    invoke-interface {v6, p1, p2, v7, v0}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchIQVideos(IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method
