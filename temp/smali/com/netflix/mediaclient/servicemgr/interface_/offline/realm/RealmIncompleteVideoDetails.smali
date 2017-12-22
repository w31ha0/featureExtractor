.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;
.super Lio/realm/RealmObject;
.source "RealmIncompleteVideoDetails.java"

# interfaces
.implements Lio/realm/RealmIncompleteVideoDetailsRealmProxyInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private playableId:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private videoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static insertInRealm(Lio/realm/Realm;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails$1;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getPlayableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->realmGet$playableId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->realmGet$profileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoType()I
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->realmGet$videoType()I

    move-result v0

    return v0
.end method

.method public realmGet$playableId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->playableId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$profileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$videoType()I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->videoType:I

    return v0
.end method

.method public realmSet$playableId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->playableId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$profileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->profileId:Ljava/lang/String;

    return-void
.end method

.method public realmSet$videoType(I)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->videoType:I

    return-void
.end method

.method public setPlayableId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->realmSet$playableId(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->realmSet$profileId(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public setVideoType(I)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;->realmSet$videoType(I)V

    .line 50
    return-void
.end method
