.class final Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;
.super Ljava/lang/Object;
.source "RealmVideoDetails.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field final synthetic val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field final synthetic val$profileId:Ljava/lang/String;

.field final synthetic val$seasons:Ljava/util/List;

.field final synthetic val$service:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Ljava/lang/String;Ljava/util/List;Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$profileId:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$seasons:Ljava/util/List;

    iput-object p4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 5

    .prologue
    .line 156
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    .line 157
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->fillForRealm(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$profileId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->access$002(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$seasons:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$seasons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    .line 162
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->access$100(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;)Lio/realm/RealmList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 163
    new-instance v3, Lio/realm/RealmList;

    invoke-direct {v3}, Lio/realm/RealmList;-><init>()V

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->access$102(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Lio/realm/RealmList;)Lio/realm/RealmList;

    .line 165
    :cond_0
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;

    invoke-direct {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;-><init>()V

    .line 166
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getSeasonNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->setNumber(I)V

    .line 167
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmSeason;->setTitle(Ljava/lang/String;)V

    .line 168
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->access$100(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;)Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    goto :goto_0

    .line 173
    :cond_1
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v2, "playableId"

    iget-object v3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    .line 174
    if-nez v1, :cond_2

    .line 175
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    invoke-virtual {p1, v1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;

    .line 177
    :cond_2
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->access$200(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmPlayable;)V

    .line 180
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->cacheVideoDetailsImage(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v1, "playableId"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$1;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 184
    return-void
.end method
