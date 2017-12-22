.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;
.super Ljava/lang/Object;
.source "RealmProfile.java"

# interfaces
.implements Lio/realm/RealmModel;
.implements Lio/realm/RealmProfileRealmProxyInterface;


# instance fields
.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private kids:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->fillForRealm(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    return-void
.end method

.method private fillForRealm(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V
    .locals 1

    .prologue
    .line 85
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->realmSet$name(Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->realmSet$kids(Z)V

    .line 87
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->realmSet$iconUrl(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static insertProfileIfNeeded(Lio/realm/Realm;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V
    .locals 2

    .prologue
    .line 32
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->idNotExists(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile$1;

    invoke-direct {v1, v0, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile$1;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V

    invoke-static {p0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->executeTransactionAsync(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V

    .line 46
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->cacheProfileImage(Lcom/netflix/mediaclient/service/NetflixService;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->realmGet$id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealmProfileIconUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineImageUtils;->getLocalFileForProfileImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->realmGet$iconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isKids()Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->realmGet$kids()Z

    move-result v0

    return v0
.end method

.method public realmGet$iconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$kids()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->kids:Z

    return v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$iconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public realmSet$id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->id:Ljava/lang/String;

    return-void
.end method

.method public realmSet$kids(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->kids:Z

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->name:Ljava/lang/String;

    return-void
.end method
