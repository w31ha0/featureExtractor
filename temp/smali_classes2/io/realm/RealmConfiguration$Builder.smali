.class public Lio/realm/RealmConfiguration$Builder;
.super Ljava/lang/Object;
.source "RealmConfiguration.java"


# instance fields
.field private assetFilePath:Ljava/lang/String;

.field private debugSchema:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private deleteRealmIfMigrationNeeded:Z

.field private directory:Ljava/io/File;

.field private durability:Lio/realm/internal/SharedRealm$Durability;

.field private fileName:Ljava/lang/String;

.field private initialDataTransaction:Lio/realm/Realm$Transaction;

.field private key:[B

.field private migration:Lio/realm/RealmMigration;

.field private modules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private rxFactory:Lio/realm/rx/RxObservableFactory;

.field private schemaVersion:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 394
    sget-object v0, Lio/realm/BaseRealm;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/realm/RealmConfiguration$Builder;-><init>(Landroid/content/Context;)V

    .line 395
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    .line 382
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    .line 398
    if-nez p1, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Call `Realm.init(Context)` before creating a RealmConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    invoke-static {p1}, Lio/realm/internal/RealmCore;->loadLibrary(Landroid/content/Context;)V

    .line 402
    invoke-direct {p0, p1}, Lio/realm/RealmConfiguration$Builder;->initializeBuilder(Landroid/content/Context;)V

    .line 403
    return-void
.end method

.method private addModule(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 621
    if-eqz p1, :cond_0

    .line 622
    invoke-direct {p0, p1}, Lio/realm/RealmConfiguration$Builder;->checkModule(Ljava/lang/Object;)V

    .line 623
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_0
    return-void
.end method

.method private checkModule(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 672
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/realm/annotations/RealmModule;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a RealmModule. Add @RealmModule to the class definition."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_0
    return-void
.end method

.method private initializeBuilder(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->directory:Ljava/io/File;

    .line 408
    const-string/jumbo v0, "default.realm"

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    .line 409
    iput-object v2, p0, Lio/realm/RealmConfiguration$Builder;->key:[B

    .line 410
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/realm/RealmConfiguration$Builder;->schemaVersion:J

    .line 411
    iput-object v2, p0, Lio/realm/RealmConfiguration$Builder;->migration:Lio/realm/RealmMigration;

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    .line 413
    sget-object v0, Lio/realm/internal/SharedRealm$Durability;->FULL:Lio/realm/internal/SharedRealm$Durability;

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/SharedRealm$Durability;

    .line 414
    invoke-static {}, Lio/realm/RealmConfiguration;->access$000()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-static {}, Lio/realm/RealmConfiguration;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lio/realm/RealmConfiguration;
    .locals 14

    .prologue
    .line 652
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lio/realm/RealmConfiguration;->isRxJavaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    new-instance v0, Lio/realm/rx/RealmObservableFactory;

    invoke-direct {v0}, Lio/realm/rx/RealmObservableFactory;-><init>()V

    iput-object v0, p0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    .line 656
    :cond_0
    new-instance v0, Lio/realm/RealmConfiguration;

    iget-object v1, p0, Lio/realm/RealmConfiguration$Builder;->directory:Ljava/io/File;

    iget-object v2, p0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lio/realm/RealmConfiguration$Builder;->directory:Ljava/io/File;

    iget-object v5, p0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 658
    invoke-static {v3}, Lio/realm/RealmConfiguration;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    iget-object v5, p0, Lio/realm/RealmConfiguration$Builder;->key:[B

    iget-wide v6, p0, Lio/realm/RealmConfiguration$Builder;->schemaVersion:J

    iget-object v8, p0, Lio/realm/RealmConfiguration$Builder;->migration:Lio/realm/RealmMigration;

    iget-boolean v9, p0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    iget-object v10, p0, Lio/realm/RealmConfiguration$Builder;->durability:Lio/realm/internal/SharedRealm$Durability;

    iget-object v11, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    iget-object v12, p0, Lio/realm/RealmConfiguration$Builder;->debugSchema:Ljava/util/HashSet;

    .line 665
    invoke-static {v11, v12}, Lio/realm/RealmConfiguration;->createSchemaMediator(Ljava/util/Set;Ljava/util/Set;)Lio/realm/internal/RealmProxyMediator;

    move-result-object v11

    iget-object v12, p0, Lio/realm/RealmConfiguration$Builder;->rxFactory:Lio/realm/rx/RxObservableFactory;

    iget-object v13, p0, Lio/realm/RealmConfiguration$Builder;->initialDataTransaction:Lio/realm/Realm$Transaction;

    invoke-direct/range {v0 .. v13}, Lio/realm/RealmConfiguration;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJLio/realm/RealmMigration;ZLio/realm/internal/SharedRealm$Durability;Lio/realm/internal/RealmProxyMediator;Lio/realm/rx/RxObservableFactory;Lio/realm/Realm$Transaction;)V

    .line 656
    return-object v0
.end method

.method public deleteRealmIfMigrationNeeded()Lio/realm/RealmConfiguration$Builder;
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->assetFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Realm cannot clear its schema when previously configured to use an asset file by calling assetFile()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmConfiguration$Builder;->deleteRealmIfMigrationNeeded:Z

    .line 519
    return-object p0
.end method

.method public migration(Lio/realm/RealmMigration;)Lio/realm/RealmConfiguration$Builder;
    .locals 2

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A non-null migration must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_0
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->migration:Lio/realm/RealmMigration;

    .line 498
    return-object p0
.end method

.method public varargs modules(Ljava/lang/Object;[Ljava/lang/Object;)Lio/realm/RealmConfiguration$Builder;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lio/realm/RealmConfiguration$Builder;->modules:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 557
    invoke-direct {p0, p1}, Lio/realm/RealmConfiguration$Builder;->addModule(Ljava/lang/Object;)V

    .line 558
    if-eqz p2, :cond_0

    .line 559
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 560
    aget-object v1, p2, v0

    .line 561
    invoke-direct {p0, v1}, Lio/realm/RealmConfiguration$Builder;->addModule(Ljava/lang/Object;)V

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_0
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/realm/RealmConfiguration$Builder;
    .locals 2

    .prologue
    .line 423
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A non-empty filename must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_1
    iput-object p1, p0, Lio/realm/RealmConfiguration$Builder;->fileName:Ljava/lang/String;

    .line 428
    return-object p0
.end method

.method public schemaVersion(J)Lio/realm/RealmConfiguration$Builder;
    .locals 3

    .prologue
    .line 481
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Realm schema version numbers must be 0 (zero) or higher. Yours was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    iput-wide p1, p0, Lio/realm/RealmConfiguration$Builder;->schemaVersion:J

    .line 485
    return-object p0
.end method
