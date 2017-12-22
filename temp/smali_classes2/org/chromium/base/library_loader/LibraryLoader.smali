.class public Lorg/chromium/base/library_loader/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "base::android"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LibraryLoader"

.field private static volatile sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

.field private static sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCommandLineSwitched:Z

.field private volatile mInitialized:Z

.field private mIsUsingBrowserSharedRelros:Z

.field private mLibraryLoadTimeMs:J

.field private mLibraryPreloaderStatus:I

.field private final mLibraryProcessType:I

.field private mLibraryWasLoadedFromApk:Z

.field private mLoadAtFixedAddressFailed:Z

.field private mLoaded:Z

.field private final mPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderStatus:I

    .line 130
    iput p1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->nativePercentageOfResidentNativeLibraryCode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeForkAndPrefetchNativeLibrary()Z

    move-result v0

    return v0
.end method

.method private ensureCommandLineSwitchedAlreadyLocked()V
    .locals 1

    .prologue
    .line 353
    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 354
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    if-eqz v0, :cond_1

    .line 364
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-static {}, Lorg/chromium/base/CommandLine;->getJavaSwitchesOrNull()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeInitCommandLine([Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lorg/chromium/base/CommandLine;->enableNativeProxy()V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mCommandLineSwitched:Z

    .line 363
    invoke-static {}, Lorg/chromium/base/ContextUtils;->initApplicationContextForNative()V

    goto :goto_0
.end method

.method public static get(I)Lorg/chromium/base/library_loader/LibraryLoader;
    .locals 3

    .prologue
    .line 118
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    if-ne v0, p0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    monitor-exit v1

    .line 125
    :goto_0
    return-object v0

    .line 121
    :cond_0
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 124
    :cond_1
    :try_start_1
    new-instance v0, Lorg/chromium/base/library_loader/LibraryLoader;

    invoke-direct {v0, p0}, Lorg/chromium/base/library_loader/LibraryLoader;-><init>(I)V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 125
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getLibraryLoadFromApkStatus()I
    .locals 1

    .prologue
    .line 421
    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 423
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryWasLoadedFromApk:Z

    if-eqz v0, :cond_1

    .line 424
    const/4 v0, 0x3

    .line 428
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLibraryProcessType()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 453
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 454
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryProcessType:I

    goto :goto_0
.end method

.method private initializeAlreadyLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 368
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureCommandLineSwitchedAlreadyLocked()V

    .line 374
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeLibraryLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    const-string/jumbo v0, "LibraryLoader"

    const-string/jumbo v1, "error calling nativeLibraryLoaded"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    invoke-direct {v0, v5}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 380
    :cond_1
    const-string/jumbo v0, "LibraryLoader"

    const-string/jumbo v1, "Expected native library version number \"%s\", actual native library version number \"%s\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    sget-object v0, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeGetVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 384
    new-instance v0, Lorg/chromium/base/library_loader/ProcessInitException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(I)V

    throw v0

    .line 388
    :cond_2
    invoke-static {}, Lorg/chromium/base/TraceEvent;->registerNativeEnabledObserver()V

    .line 395
    iput-boolean v5, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAlreadyLocked(Landroid/content/Context;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v0, 0x0

    .line 270
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    if-nez v1, :cond_5

    .line 271
    sget-boolean v1, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Lorg/chromium/base/library_loader/ProcessInitException;

    invoke-direct {v1, v12, v0}, Lorg/chromium/base/library_loader/ProcessInitException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 273
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 275
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 277
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    move-result-object v4

    .line 278
    invoke-virtual {v4}, Lorg/chromium/base/library_loader/Linker;->prepareLibraryLoad()V

    .line 280
    sget-object v5, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    array-length v6, v5

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_3

    aget-object v7, v5, v1

    .line 284
    invoke-virtual {v4, v7}, Lorg/chromium/base/library_loader/Linker;->isChromiumLinkerLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    .line 291
    invoke-static {v7}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 292
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isInZipFile()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 295
    const-string/jumbo v9, "LibraryLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " from within "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 303
    :goto_2
    :try_start_2
    invoke-direct {p0, v4, v0, v8}, Lorg/chromium/base/library_loader/LibraryLoader;->loadLibrary(Lorg/chromium/base/library_loader/Linker;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 304
    :catch_1
    move-exception v0

    .line 305
    :try_start_3
    const-string/jumbo v1, "LibraryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to load library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    throw v0

    .line 298
    :cond_2
    const-string/jumbo v9, "LibraryLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 310
    :cond_3
    invoke-virtual {v4}, Lorg/chromium/base/library_loader/Linker;->finishLibraryLoad()V

    .line 326
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 327
    sub-long v4, v0, v2

    iput-wide v4, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    .line 328
    const-string/jumbo v4, "LibraryLoader"

    const-string/jumbo v5, "Time to load native libraries: %d ms (timestamps %d-%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0x2710

    rem-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    const-wide/16 v8, 0x2710

    rem-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    .line 338
    :cond_5
    return-void

    .line 312
    :cond_6
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    if-eqz v1, :cond_7

    .line 313
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    invoke-virtual {v1, p1}, Lorg/chromium/base/library_loader/NativeLibraryPreloader;->loadLibrary(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderStatus:I

    .line 316
    :cond_7
    sget-object v1, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    array-length v4, v1

    :goto_3
    if-ge v0, v4, :cond_4

    aget-object v5, v1, v0
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0

    .line 318
    :try_start_4
    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_2

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 319
    :catch_2
    move-exception v0

    .line 320
    :try_start_5
    const-string/jumbo v1, "LibraryLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to load library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    throw v0
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method private loadLibrary(Lorg/chromium/base/library_loader/Linker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 242
    invoke-virtual {p1}, Lorg/chromium/base/library_loader/Linker;->isUsingBrowserSharedRelros()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mIsUsingBrowserSharedRelros:Z

    .line 247
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    if-eqz p2, :cond_0

    .line 260
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryWasLoadedFromApk:Z

    .line 262
    :cond_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string/jumbo v0, "LibraryLoader"

    const-string/jumbo v1, "Failed to load native library with shared RELRO, retrying without"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iput-boolean v3, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadAtFixedAddressFailed:Z

    .line 251
    invoke-virtual {p1, p2, p3}, Lorg/chromium/base/library_loader/Linker;->loadLibraryNoFixedAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p1, p2, p3}, Lorg/chromium/base/library_loader/Linker;->loadLibrary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static native nativeForkAndPrefetchNativeLibrary()Z
.end method

.method private native nativeGetVersionNumber()Ljava/lang/String;
.end method

.method private native nativeInitCommandLine([Ljava/lang/String;)V
.end method

.method private native nativeLibraryLoaded()Z
.end method

.method private static native nativePercentageOfResidentNativeLibraryCode()I
.end method

.method private native nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZIJ)V
.end method

.method private native nativeRecordLibraryPreloaderBrowserHistogram(I)V
.end method

.method private native nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZJ)V
.end method

.method private native nativeRegisterLibraryPreloaderRendererHistogram(I)V
.end method

.method private recordBrowserProcessHistogram()V
    .locals 6

    .prologue
    .line 406
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-boolean v1, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mIsUsingBrowserSharedRelros:Z

    iget-boolean v2, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoadAtFixedAddressFailed:Z

    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->getLibraryLoadFromApkStatus()I

    move-result v3

    iget-wide v4, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZIJ)V

    .line 413
    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    if-eqz v0, :cond_1

    .line 414
    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderStatus:I

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRecordLibraryPreloaderBrowserHistogram(I)V

    .line 416
    :cond_1
    return-void
.end method

.method public static setLibraryLoaderForTesting(Lorg/chromium/base/library_loader/LibraryLoader;)V
    .locals 0
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 463
    sput-object p0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 464
    return-void
.end method

.method public static setNativeLibraryPreloader(Lorg/chromium/base/library_loader/NativeLibraryPreloader;)V
    .locals 2

    .prologue
    .line 106
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-boolean v0, Lorg/chromium/base/library_loader/LibraryLoader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sInstance:Lorg/chromium/base/library_loader/LibraryLoader;

    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_1
    :try_start_1
    sput-object p0, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    .line 109
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    return-void
.end method


# virtual methods
.method public asyncPrefetchLibrariesToMemory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mPrefetchLibraryHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    .line 207
    new-instance v1, Lorg/chromium/base/library_loader/LibraryLoader$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader$1;-><init>(Lorg/chromium/base/library_loader/LibraryLoader;Z)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lorg/chromium/base/library_loader/LibraryLoader$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    return-void
.end method

.method public ensureInitialized()V
    .locals 2

    .prologue
    .line 138
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 141
    monitor-exit v1

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;)V

    .line 144
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 145
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 191
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->initializeAlreadyLocked()V

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadNow()V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->loadNowOverrideApplicationContext(Landroid/content/Context;)V

    .line 166
    return-void
.end method

.method public loadNowOverrideApplicationContext(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 177
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Attempt to load again from alternate context."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/chromium/base/library_loader/LibraryLoader;->loadAlreadyLocked(Landroid/content/Context;)V

    .line 182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    return-void
.end method

.method public onNativeInitializationComplete()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->recordBrowserProcessHistogram()V

    .line 401
    return-void
.end method

.method public registerRendererProcessHistogram(ZZ)V
    .locals 2

    .prologue
    .line 437
    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->getInstance()Lorg/chromium/base/library_loader/Linker;

    invoke-static {}, Lorg/chromium/base/library_loader/Linker;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-wide v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryLoadTimeMs:J

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZJ)V

    .line 442
    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->sLibraryPreloader:Lorg/chromium/base/library_loader/NativeLibraryPreloader;

    if-eqz v0, :cond_1

    .line 443
    iget v0, p0, Lorg/chromium/base/library_loader/LibraryLoader;->mLibraryPreloaderStatus:I

    invoke-direct {p0, v0}, Lorg/chromium/base/library_loader/LibraryLoader;->nativeRegisterLibraryPreloaderRendererHistogram(I)V

    .line 445
    :cond_1
    return-void
.end method

.method public switchCommandLineForWebView()V
    .locals 2

    .prologue
    .line 344
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/base/library_loader/LibraryLoader;->ensureCommandLineSwitchedAlreadyLocked()V

    .line 346
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
