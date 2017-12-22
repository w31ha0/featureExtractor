.class final Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$2;
.super Ljava/lang/Object;
.source "RealmVideoDetails.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field final synthetic val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$2;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 3

    .prologue
    .line 191
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v1, "playableId"

    iget-object v2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails$2;->val$details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 192
    return-void
.end method
