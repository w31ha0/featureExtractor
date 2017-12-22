.class public Lcom/netflix/falkor/cache/FalkorCache;
.super Ljava/lang/Object;
.source "FalkorCache.java"


# static fields
.field private static SCHEMA_VERSION:I

.field private static sInit:Z

.field private static sMonitor:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

.field public static final sRealmConfiguration:Lio/realm/RealmConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 45
    const/16 v0, 0x1f5

    sput v0, Lcom/netflix/falkor/cache/FalkorCache;->SCHEMA_VERSION:I

    .line 47
    sput-boolean v2, Lcom/netflix/falkor/cache/FalkorCache;->sInit:Z

    .line 50
    new-instance v0, Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-direct {v0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;-><init>()V

    sput-object v0, Lcom/netflix/falkor/cache/FalkorCache;->sMonitor:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    .line 131
    new-instance v0, Lio/realm/RealmConfiguration$Builder;

    invoke-direct {v0}, Lio/realm/RealmConfiguration$Builder;-><init>()V

    const-string/jumbo v1, "falkor.realm"

    .line 132
    invoke-virtual {v0, v1}, Lio/realm/RealmConfiguration$Builder;->name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/netflix/falkor/cache/FalkorRealmModule;

    invoke-direct {v1}, Lcom/netflix/falkor/cache/FalkorRealmModule;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    .line 133
    invoke-virtual {v0, v1, v2}, Lio/realm/RealmConfiguration$Builder;->modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    sget v1, Lcom/netflix/falkor/cache/FalkorCache;->SCHEMA_VERSION:I

    int-to-long v2, v1

    .line 134
    invoke-virtual {v0, v2, v3}, Lio/realm/RealmConfiguration$Builder;->schemaVersion(J)Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lio/realm/RealmConfiguration$Builder;->build()Lio/realm/RealmConfiguration;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/cache/FalkorCache;->sRealmConfiguration:Lio/realm/RealmConfiguration;

    .line 131
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/netflix/falkor/cache/FalkorCacheMonitor;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache;->sMonitor:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/netflix/falkor/cache/FalkorCache;->SCHEMA_VERSION:I

    return v0
.end method

.method public static getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache;->sMonitor:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    return-object v0
.end method

.method public static init(Lcom/netflix/mediaclient/NetflixApplication;)V
    .locals 3

    .prologue
    .line 54
    sget-boolean v0, Lcom/netflix/falkor/cache/FalkorCache;->sInit:Z

    if-nez v0, :cond_0

    .line 56
    :try_start_0
    invoke-static {p0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->init(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lio/realm/Realm;->init(Landroid/content/Context;)V

    .line 58
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache;->sMonitor:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->getInstance()Lio/realm/Realm;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->init(Lio/realm/Realm;Lcom/netflix/mediaclient/NetflixApplication;)V

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/falkor/cache/FalkorCache;->sInit:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FalkorCache.init -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    goto :goto_0
.end method
