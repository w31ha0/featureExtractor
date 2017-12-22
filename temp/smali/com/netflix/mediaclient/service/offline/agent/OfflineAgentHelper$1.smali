.class final Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "OfflineAgentHelper.java"


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$profileId:Ljava/lang/String;

.field final synthetic val$realm:Lio/realm/Realm;

.field final synthetic val$service:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$realm:Lio/realm/Realm;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$profileId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 229
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 230
    :cond_0
    invoke-static {p2, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper;->access$000(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    const-string/jumbo v0, "nf_offlineAgent"

    const-string/jumbo v1, "Saving movie details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$realm:Lio/realm/Realm;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$profileId:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->insertInRealm(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBookmarkStore()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$profileId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->createOrUpdateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentHelper$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
