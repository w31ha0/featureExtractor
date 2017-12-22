.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "OfflineAgentHelper.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

.field final synthetic val$episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->val$episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onShowDetailsAndSeasonsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 264
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 265
    :cond_0
    invoke-static {p3, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->access$000(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "Saving episode details and season details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->val$episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$profileId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBookmarkStore()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->val$episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$profileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->createOrUpdateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$profileId:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/util/List;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2$1;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$2;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
