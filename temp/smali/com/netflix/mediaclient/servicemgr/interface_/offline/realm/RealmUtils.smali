.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;
.super Ljava/lang/Object;
.source "RealmUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RealmUtils"

.field public static sCurrentConfig:Lio/realm/RealmConfiguration;

.field private static sCurrentStatesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-string/jumbo v1, "offline.realm"

    .line 31
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmOfflineModule;

    invoke-direct {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmOfflineModule;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmOfflineMigration;

    invoke-direct {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmOfflineMigration;-><init>()V

    .line 33
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->migration(Lio/realm/RealmMigration;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    const-wide/16 v2, 0x6

    .line 34
    invoke-virtual {v0, v2, v3}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->sCurrentConfig:Lio/realm/RealmConfiguration;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndUpdateCurrentState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;)V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->checkAndUpdateCurrentState([Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;)V

    .line 185
    return-void
.end method

.method private static checkAndUpdateCurrentState([Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;)V
    .locals 4

    .prologue
    .line 188
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->sCurrentStatesMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->sCurrentStatesMap:Ljava/util/HashMap;

    .line 192
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 193
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->sCurrentStatesMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->sCurrentStatesMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    .line 200
    :goto_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SPY-10228 - Realm Db is in a wrong state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->sCurrentStatesMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; but should be in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->sCurrentStatesMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void

    .line 196
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->CLOSED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    goto :goto_0
.end method

.method public static close(Lio/realm/Realm;)V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->CLOSED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->checkAndUpdateCurrentState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;)V

    .line 81
    invoke-virtual {p0}, Lio/realm/Realm;->close()V

    .line 82
    return-void
.end method

.method public static executeTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->checkAndUpdateCurrentState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;)V

    .line 71
    invoke-virtual {p0, p1}, Lio/realm/Realm;->executeTransaction(Lio/realm/Realm$Transaction;)V

    .line 72
    return-void
.end method

.method public static executeTransactionAsync(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->checkAndUpdateCurrentState(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;)V

    .line 76
    invoke-virtual {p0, p1}, Lio/realm/Realm;->executeTransactionAsync(Lio/realm/Realm$Transaction;)Lio/realm/RealmAsyncTask;

    .line 77
    return-void
.end method

.method public static getIncompleteVideoDetails(Lio/realm/Realm;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmIncompleteVideoDetails;

    invoke-virtual {p0, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    return-object v0
.end method

.method public static getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getRealmInstance()Lio/realm/Realm;

    move-result-object v1

    .line 125
    :try_start_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    .line 126
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->close(Lio/realm/Realm;)V

    .line 132
    :goto_0
    return-object v0

    .line 130
    :cond_0
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->close(Lio/realm/Realm;)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->close(Lio/realm/Realm;)V

    throw v0
.end method

.method public static getProfile(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getRealmInstance()Lio/realm/Realm;

    move-result-object v1

    .line 102
    :try_start_0
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {v1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2, p0}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->close(Lio/realm/Realm;)V

    .line 102
    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->close(Lio/realm/Realm;)V

    throw v0
.end method

.method public static getRealmInstance()Lio/realm/Realm;
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->CLOSED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;->INSTANCE_OBTAINED:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->checkAndUpdateCurrentState([Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$DbState;)V

    .line 61
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->sCurrentConfig:Lio/realm/RealmConfiguration;

    invoke-static {v0}, Lio/realm/Realm;->getInstance(Lio/realm/RealmConfiguration;)Lio/realm/Realm;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    const-string/jumbo v1, "RealmUtils"

    const-string/jumbo v2, "WARNING: If you downgraded the app please clear all app data"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    throw v0
.end method

.method public static idNotExists(Lio/realm/Realm;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeRecordsForPlayable(Landroid/content/Context;Lio/realm/Realm;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$1;

    invoke-direct {v0, p2, p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->executeTransaction(Lio/realm/Realm;Lio/realm/Realm$Transaction;)V

    .line 178
    return-void
.end method
