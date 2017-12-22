.class public Lcom/netflix/falkor/task/FetchEpisodesTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchEpisodesTask.java"


# static fields
.field private static final FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fromEpisode:I

.field private final id:Ljava/lang/String;

.field private final toEpisode:I

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/falkor/task/CmpUtils;->FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;

    sput-object v0, Lcom/netflix/falkor/task/FetchEpisodesTask;->FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p6}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 26
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->id:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 28
    iput p4, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->fromEpisode:I

    .line 29
    iput p5, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->toEpisode:I

    .line 30
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "episodes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->fromEpisode:I

    iget v3, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->toEpisode:I

    invoke-static {v2, v3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/falkor/task/FetchEpisodesTask;->FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 59
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 5

    .prologue
    .line 44
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p2, Lcom/netflix/falkor/CachedModelProxy$GetResult;->pqls:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 47
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/netflix/model/branches/FalkorVideo;

    if-eqz v3, :cond_0

    .line 48
    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    .line 49
    iget-object v3, p0, Lcom/netflix/falkor/task/FetchEpisodesTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/netflix/falkor/CachedModelProxy;->updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Video$Bookmark;)V

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v1, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 54
    return-void
.end method

.method protected shouldCollapseMissingPql(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
