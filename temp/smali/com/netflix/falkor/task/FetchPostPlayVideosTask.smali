.class public Lcom/netflix/falkor/task/FetchPostPlayVideosTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchPostPlayVideosTask.java"


# instance fields
.field private final POST_PLAY_CREATE_NEW_POST_PLAY_CONTEXT:Ljava/lang/String;

.field private final context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

.field private final type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p5}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 52
    const-string/jumbo v0, "ppNewContext"

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->POST_PLAY_CREATE_NEW_POST_PLAY_CONTEXT:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 26
    iput-object p4, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    .line 27
    return-void
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 9
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
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-array v1, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "detail"

    :goto_0
    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-array v0, v7, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "postPlayExperience"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 38
    const-string/jumbo v1, "experienceData"

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->append(Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "playbackVideos"

    aput-object v2, v1, v4

    .line 40
    invoke-static {v4, v8}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4, v8}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v6

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "detail"

    aput-object v3, v2, v4

    const-string/jumbo v3, "summary"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-array v0, v8, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 44
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, "interactive"

    aput-object v1, v0, v6

    const-string/jumbo v1, "postplay"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string/jumbo v2, "postPlayExperience"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    .line 48
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "postPlayExperiences"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string/jumbo v2, "experienceData"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    .line 49
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "postPlayExperiences"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v2, v1, v5

    const-string/jumbo v2, "playbackVideos"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    .line 50
    return-void

    .line 34
    :cond_0
    const-string/jumbo v0, "summary"

    goto/16 :goto_0
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 75
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->type:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "summary"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;

    .line 69
    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 70
    return-void
.end method

.method protected getOptionalRequestParams()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/DataUtil$StringPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    new-instance v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    const-string/jumbo v3, "ppNewContext"

    iget-object v0, p0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;->context:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    sget-object v4, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->POST_PLAY:Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;

    .line 60
    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "false"

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-object v1

    .line 60
    :cond_0
    const-string/jumbo v0, "true"

    goto :goto_0
.end method
