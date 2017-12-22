.class Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;
.source "GenreActionHandler.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 34
    return-void
.end method


# virtual methods
.method public handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v1, "genreid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    if-nez v0, :cond_0

    .line 44
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Could not find genre ID"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 73
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler$1FetchLoLoMoSummaryCallback;

    iget-object v3, p0, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v2, p0, v3, v0}, Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler$1FetchLoLoMoSummaryCallback;-><init>(Lcom/netflix/mediaclient/protocol/nflx/GenreActionHandler;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 73
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0
.end method
