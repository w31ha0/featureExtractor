.class public final Lio/realm/internal/SharedRealm;
.super Ljava/lang/Object;
.source "SharedRealm.java"

# interfaces
.implements Lio/realm/internal/NativeObject;
.implements Ljava/io/Closeable;


# static fields
.field private static final nativeFinalizerPtr:J

.field private static volatile temporaryDirectory:Ljava/io/File;


# instance fields
.field public final capabilities:Lio/realm/internal/Capabilities;

.field public final collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field private configuration:Lio/realm/RealmConfiguration;

.field final context:Lio/realm/internal/Context;

.field public final iterators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/Collection$Iterator;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastSchemaVersion:J

.field private nativePtr:J

.field public final objectServerFacade:Lio/realm/internal/ObjectServerFacade;

.field public final realmNotifier:Lio/realm/internal/RealmNotifier;

.field private final schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lio/realm/internal/SharedRealm;->nativeGetFinalizerPtr()J

    move-result-wide v0

    sput-wide v0, Lio/realm/internal/SharedRealm;->nativeFinalizerPtr:J

    return-void
.end method

.method private constructor <init>(JLio/realm/RealmConfiguration;Lio/realm/internal/SharedRealm$SchemaVersionListener;)V
    .locals 7

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->collections:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    .line 184
    new-instance v2, Lio/realm/internal/android/AndroidCapabilities;

    invoke-direct {v2}, Lio/realm/internal/android/AndroidCapabilities;-><init>()V

    .line 185
    new-instance v0, Lio/realm/internal/android/AndroidRealmNotifier;

    invoke-direct {v0, p0, v2}, Lio/realm/internal/android/AndroidRealmNotifier;-><init>(Lio/realm/internal/SharedRealm;Lio/realm/internal/Capabilities;)V

    .line 187
    invoke-static {p1, p2, v0}, Lio/realm/internal/SharedRealm;->nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J

    move-result-wide v4

    iput-wide v4, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    .line 188
    iput-object p3, p0, Lio/realm/internal/SharedRealm;->configuration:Lio/realm/RealmConfiguration;

    .line 190
    iput-object v2, p0, Lio/realm/internal/SharedRealm;->capabilities:Lio/realm/internal/Capabilities;

    .line 191
    iput-object v0, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    .line 192
    iput-object p4, p0, Lio/realm/internal/SharedRealm;->schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;

    .line 193
    new-instance v0, Lio/realm/internal/Context;

    invoke-direct {v0}, Lio/realm/internal/Context;-><init>()V

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/Context;

    .line 194
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/Context;

    invoke-virtual {v0, p0}, Lio/realm/internal/Context;->addReference(Lio/realm/internal/NativeObject;)V

    .line 195
    if-nez p4, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lio/realm/internal/SharedRealm;->lastSchemaVersion:J

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/SharedRealm;->objectServerFacade:Lio/realm/internal/ObjectServerFacade;

    .line 197
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-interface {v2}, Lio/realm/internal/Capabilities;->canDeliverNotification()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lio/realm/internal/SharedRealm;->nativeSetAutoRefresh(JZ)V

    .line 198
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getSchemaVersion()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;)Lio/realm/internal/SharedRealm;
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/realm/internal/SharedRealm;->getInstance(Lio/realm/RealmConfiguration;Lio/realm/internal/SharedRealm$SchemaVersionListener;Z)Lio/realm/internal/SharedRealm;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lio/realm/RealmConfiguration;Lio/realm/internal/SharedRealm$SchemaVersionListener;Z)Lio/realm/internal/SharedRealm;
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 210
    invoke-static {}, Lio/realm/internal/ObjectServerFacade;->getSyncFacadeIfPossible()Lio/realm/internal/ObjectServerFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/realm/internal/ObjectServerFacade;->getUserAndServerUrl(Lio/realm/RealmConfiguration;)[Ljava/lang/String;

    move-result-object v0

    .line 211
    aget-object v10, v0, v5

    .line 212
    aget-object v11, v0, v4

    .line 217
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getEncryptionKey()[B

    move-result-object v2

    if-eqz v10, :cond_0

    sget-object v0, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_ADDITIVE:Lio/realm/internal/SharedRealm$SchemaMode;

    .line 219
    invoke-virtual {v0}, Lio/realm/internal/SharedRealm$SchemaMode;->getNativeValue()B

    move-result v3

    .line 220
    :goto_0
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getDurability()Lio/realm/internal/SharedRealm$Durability;

    move-result-object v0

    sget-object v6, Lio/realm/internal/SharedRealm$Durability;->MEM_ONLY:Lio/realm/internal/SharedRealm$Durability;

    if-ne v0, v6, :cond_1

    .line 222
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmConfiguration;->getSchemaVersion()J

    move-result-wide v6

    move v8, v5

    move v9, p2

    .line 216
    invoke-static/range {v1 .. v11}, Lio/realm/internal/SharedRealm;->nativeCreateConfig(Ljava/lang/String;[BBZZJZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 229
    :try_start_0
    new-instance v0, Lio/realm/internal/SharedRealm;

    invoke-direct {v0, v2, v3, p0, p1}, Lio/realm/internal/SharedRealm;-><init>(JLio/realm/RealmConfiguration;Lio/realm/internal/SharedRealm$SchemaVersionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-static {v2, v3}, Lio/realm/internal/SharedRealm;->nativeCloseConfig(J)V

    .line 229
    return-object v0

    .line 219
    :cond_0
    sget-object v0, Lio/realm/internal/SharedRealm$SchemaMode;->SCHEMA_MODE_MANUAL:Lio/realm/internal/SharedRealm$SchemaMode;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm$SchemaMode;->getNativeValue()B

    move-result v3

    goto :goto_0

    :cond_1
    move v4, v5

    .line 220
    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lio/realm/internal/SharedRealm;->nativeCloseConfig(J)V

    throw v0
.end method

.method public static initialize(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 44
    sget-object v0, Lio/realm/internal/SharedRealm;->temporaryDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 48
    :cond_0
    if-nez p0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'tempDirectory\' must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    new-instance v1, Lio/realm/internal/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to create temporary directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/internal/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_2
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_3
    invoke-static {v0}, Lio/realm/internal/SharedRealm;->nativeInit(Ljava/lang/String;)V

    .line 61
    sput-object p0, Lio/realm/internal/SharedRealm;->temporaryDirectory:Ljava/io/File;

    goto :goto_0
.end method

.method private static native nativeBeginTransaction(J)V
.end method

.method private static native nativeCancelTransaction(J)V
.end method

.method private static native nativeCloseConfig(J)V
.end method

.method private static native nativeCloseSharedRealm(J)V
.end method

.method private static native nativeCommitTransaction(J)V
.end method

.method private static native nativeCompact(J)Z
.end method

.method private static native nativeCreateConfig(Ljava/lang/String;[BBZZJZZLjava/lang/String;Ljava/lang/String;)J
.end method

.method private static native nativeGetFinalizerPtr()J
.end method

.method private static native nativeGetSharedRealm(JLio/realm/internal/RealmNotifier;)J
.end method

.method private static native nativeGetSnapshotVersion(J)J
.end method

.method private static native nativeGetTable(JLjava/lang/String;)J
.end method

.method private static native nativeGetTableName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetVersion(J)J
.end method

.method private static native nativeGetVersionID(J)[J
.end method

.method private static native nativeHasTable(JLjava/lang/String;)Z
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method

.method private static native nativeIsAutoRefresh(J)Z
.end method

.method private static native nativeIsClosed(J)Z
.end method

.method private static native nativeIsEmpty(J)Z
.end method

.method private static native nativeIsInTransaction(J)Z
.end method

.method private static native nativeReadGroup(J)J
.end method

.method private static native nativeRefresh(J)V
.end method

.method private static native nativeRemoveTable(JLjava/lang/String;)V
.end method

.method private static native nativeRenameTable(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeRequiresMigration(JJ)Z
.end method

.method private static native nativeSetAutoRefresh(JZ)V
.end method

.method private static native nativeSetVersion(JJ)V
.end method

.method private static native nativeSize(J)J
.end method

.method private static native nativeStopWaitForChange(J)V
.end method

.method private static native nativeUpdateSchema(JJJ)V
.end method

.method private static native nativeWaitForChange(J)Z
.end method

.method private static native nativeWriteCopy(JLjava/lang/String;[B)V
.end method


# virtual methods
.method addIterator(Lio/realm/internal/Collection$Iterator;)V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->detachIterators()V

    .line 237
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeBeginTransaction(J)V

    .line 238
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->invokeSchemaChangeListenerIfSchemaChanged()V

    .line 239
    return-void
.end method

.method public cancelTransaction()V
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeCancelTransaction(J)V

    .line 247
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 358
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0}, Lio/realm/internal/RealmNotifier;->close()V

    .line 361
    :cond_0
    iget-object v1, p0, Lio/realm/internal/SharedRealm;->context:Lio/realm/internal/Context;

    monitor-enter v1

    .line 362
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 363
    iget-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v2, v3}, Lio/realm/internal/SharedRealm;->nativeCloseSharedRealm(J)V

    .line 366
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    .line 368
    :cond_1
    monitor-exit v1

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public commitTransaction()V
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeCommitTransaction(J)V

    .line 243
    return-void
.end method

.method detachIterators()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 405
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Collection$Iterator;

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lio/realm/internal/Collection$Iterator;->detach()V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 411
    return-void
.end method

.method getGroupNative()J
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeReadGroup(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSnapshotVersion()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetSnapshotVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeFinalizerPtr()J
    .locals 2

    .prologue
    .line 378
    sget-wide v0, Lio/realm/internal/SharedRealm;->nativeFinalizerPtr:J

    return-wide v0
.end method

.method public getNativePtr()J
    .locals 2

    .prologue
    .line 373
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaVersion()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTable(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 4

    .prologue
    .line 271
    new-instance v0, Lio/realm/internal/Table;

    iget-wide v2, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v2, v3, p1}, Lio/realm/internal/SharedRealm;->nativeGetTable(JLjava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lio/realm/internal/Table;-><init>(Lio/realm/internal/SharedRealm;J)V

    return-object v0
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeGetTableName(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionID()Lio/realm/internal/SharedRealm$VersionID;
    .locals 6

    .prologue
    .line 304
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeGetVersionID(J)[J

    move-result-object v0

    .line 305
    new-instance v1, Lio/realm/internal/SharedRealm$VersionID;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/realm/internal/SharedRealm$VersionID;-><init>(JJ)V

    return-object v1
.end method

.method public hasTable(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1}, Lio/realm/internal/SharedRealm;->nativeHasTable(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method invalidateIterators()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 416
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Collection$Iterator;

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Lio/realm/internal/Collection$Iterator;->invalidate()V

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->iterators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 422
    return-void
.end method

.method public invokeSchemaChangeListenerIfSchemaChanged()V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;

    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->lastSchemaVersion:J

    .line 387
    invoke-virtual {p0}, Lio/realm/internal/SharedRealm;->getSchemaVersion()J

    move-result-wide v2

    .line 388
    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 389
    iput-wide v2, p0, Lio/realm/internal/SharedRealm;->lastSchemaVersion:J

    .line 390
    iget-object v0, p0, Lio/realm/internal/SharedRealm;->schemaChangeListener:Lio/realm/internal/SharedRealm$SchemaVersionListener;

    invoke-interface {v0, v2, v3}, Lio/realm/internal/SharedRealm$SchemaVersionListener;->onSchemaVersionChanged(J)V

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 4

    .prologue
    .line 313
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsClosed(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public isInTransaction()Z
    .locals 2

    .prologue
    .line 250
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeIsInTransaction(J)Z

    move-result v0

    return v0
.end method

.method public requiresMigration(Lio/realm/RealmSchema;)Z
    .locals 4

    .prologue
    .line 353
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/RealmSchema;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lio/realm/internal/SharedRealm;->nativeRequiresMigration(JJ)Z

    move-result v0

    return v0
.end method

.method public setSchemaVersion(J)V
    .locals 3

    .prologue
    .line 254
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/SharedRealm;->nativeSetVersion(JJ)V

    .line 255
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 287
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-static {v0, v1}, Lio/realm/internal/SharedRealm;->nativeSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateSchema(Lio/realm/RealmSchema;J)V
    .locals 6

    .prologue
    .line 340
    iget-wide v0, p0, Lio/realm/internal/SharedRealm;->nativePtr:J

    invoke-virtual {p1}, Lio/realm/RealmSchema;->getNativePtr()J

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lio/realm/internal/SharedRealm;->nativeUpdateSchema(JJJ)V

    .line 341
    return-void
.end method
