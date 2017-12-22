.class Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;
.super Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;
.source "SearchActionHandler.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
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
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandlerWithoutDelayedActionSupport;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 26
    return-void
.end method


# virtual methods
.method public handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v1, "query"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "Could not find query param"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->NOT_HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 37
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/SearchActionHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->search(Landroid/app/Activity;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    goto :goto_0
.end method
