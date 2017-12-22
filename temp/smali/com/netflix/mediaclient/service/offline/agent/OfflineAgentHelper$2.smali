.class final Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "OfflineAgentHelper.java"


# instance fields
.field final synthetic val$browseAgent:Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$playableId:Ljava/lang/String;

.field final synthetic val$profileId:Ljava/lang/String;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$service:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lio/realm/Realm;Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;Ljava/lang/String;Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$realm:Lio/realm/Realm;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$browseAgent:Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$playableId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$profileId:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 250
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 251
    :cond_0
    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->access$000(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getShowId()Ljava/lang/String;

    move-result-object v1

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$realm:Lio/realm/Realm;

    const-class v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->idNotExists(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$browseAgent:Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$playableId:Ljava/lang/String;

    new-instance v5, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;

    invoke-direct {v5, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchShowDetailsAndSeasons(Ljava/lang/String;Ljava/lang/String;ZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0

    .line 284
    :cond_3
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "Saving episode details, season details already saved"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$profileId:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBookmarkStore()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$profileId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->createOrUpdateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
