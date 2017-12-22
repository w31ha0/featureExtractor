.class final Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile$1;
.super Ljava/lang/Object;
.source "RealmProfile.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field final synthetic val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

.field final synthetic val$curProfileId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile$1;->val$curProfileId:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile$1;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile$1;->val$curProfileId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->idNotExists(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile$1;->val$curProfileId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/realm/Realm;->createObject(Ljava/lang/Class;Ljava/lang/Object;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    .line 41
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile$1;->val$curProfile:Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->access$000(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    .line 43
    :cond_0
    return-void
.end method
