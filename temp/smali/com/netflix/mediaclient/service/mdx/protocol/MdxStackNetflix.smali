.class public Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;
.super Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;
.source "MdxStackNetflix.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;


# static fields
.field private static final MDX_LAUNCH_TIMEOUT_MS:J = 0x55f0L

.field private static final MDX_SEND_MESSAGE_TIMEOUT_MS:J = 0x1b58L

.field private static final TAG:Ljava/lang/String; = "MdxControllerNative"


# instance fields
.field private final mBlacklist:Lorg/json/JSONArray;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTragetUuid:Ljava/lang/String;

.field private final mDisableWebSocket:Z

.field private final mLocalHandler:Landroid/os/Handler;

.field private final mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

.field private final mMslClinet:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

.field private mNativeMdxThread:Landroid/os/HandlerThread;

.field private final mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

.field private final mTranactionMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Landroid/os/Looper;ZLorg/json/JSONArray;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mTranactionMap:Ljava/util/List;

    .line 77
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMslClinet:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    .line 78
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mContext:Landroid/content/Context;

    .line 80
    iput-boolean p5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDisableWebSocket:Z

    .line 81
    iput-object p6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mBlacklist:Lorg/json/JSONArray;

    .line 82
    iput-object p8, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NativeMdxThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNativeMdxThread:Landroid/os/HandlerThread;

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNativeMdxThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNativeMdxThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$1;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Landroid/os/Looper;Lcom/netflix/mediaclient/servicemgr/IMSLClient;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p7}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->nativeInit(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleNativeMdxEvent(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDisableWebSocket:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->nativeStartMdx(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->nativeStopMdx()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->nativeLaunchNetflix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)J
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getXid()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->nativeSendMessage(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->putTransactionAndPrune(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->nativeSetNetworkInterface(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->nativeRelease()V

    return-void
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNativeMdxThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mBlacklist:Lorg/json/JSONArray;

    return-object v0
.end method

.method private getUuidFromXid(J)Ljava/lang/String;
    .locals 9

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getXid()J

    move-result-wide v2

    .line 515
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mTranactionMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 516
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 518
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 519
    cmp-long v1, v6, p1

    if-nez v1, :cond_1

    .line 520
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 521
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 528
    :goto_1
    return-object v0

    .line 523
    :cond_1
    const-wide/16 v0, 0x1b58

    add-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 525
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 528
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getXid()J
    .locals 2

    .prologue
    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private handleCurrentTargetFound(Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;)V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mCurrentTragetUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->selectTarget(Z)V

    .line 537
    :cond_0
    return-void
.end method

.method private handleDeviceFound(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V
    .locals 15

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 331
    if-nez p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    :cond_2
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleDeviceFound %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {v1, v2, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 338
    iget-object v13, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 339
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->isNetflixMdxService()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 341
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v14

    .line 342
    :cond_3
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 343
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-object v12, v0

    .line 344
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    invoke-virtual {v12, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->getIpa()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->updateInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleDeviceFound MDX device already recorded"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    monitor-exit v13

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 348
    :cond_4
    :try_start_1
    invoke-virtual {v12}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->getIpa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleDeviceFound MDX device associate with DIAL"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    .line 351
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->getIpa()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMslClinet:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    iget-object v10, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v11, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    move-object v8, p0

    invoke-direct/range {v1 .. v11}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;-><init>(ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 352
    check-cast v12, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;

    .line 353
    invoke-virtual {v12, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->setSessionMdxTarget(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V

    .line 354
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v12}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 355
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMslClinet:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {v12, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->notifyLaunchResult(ZLcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;)V

    .line 356
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dialUuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " serviceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->serviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onNetflixMdxDeviceFound(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/log/MdxLogUtils;->reportDeviceFound(Landroid/content/Context;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    .line 358
    monitor-exit v13

    goto/16 :goto_0

    .line 361
    :cond_5
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 362
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleDeviceFound MDX device recorded"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDisableWebSocket:Z

    if-nez v5, :cond_7

    :goto_1
    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    .line 364
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->getIpa()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMslClinet:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    iget-object v10, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v11, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    move-object v8, p0

    invoke-direct/range {v1 .. v11}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;-><init>(ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 365
    invoke-interface {v14, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 366
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleCurrentTargetFound(Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;)V

    .line 367
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/log/MdxLogUtils;->reportDeviceFound(Landroid/content/Context;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    .line 396
    :cond_6
    :goto_2
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->targetList()V

    goto/16 :goto_0

    :cond_7
    move v3, v4

    .line 363
    goto :goto_1

    .line 371
    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v8

    .line 372
    :cond_9
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 373
    invoke-interface {v8}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-object v7, v0

    .line 374
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->getIpa()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->updateInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleDeviceFound DIAL device already recorded"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    monitor-exit v13

    goto/16 :goto_0

    .line 378
    :cond_a
    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->getIpa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 379
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleDeviceFound DIAL device associate with MDX"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->getIpa()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 381
    check-cast v7, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v1, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->setSessionMdxTarget(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V

    .line 382
    invoke-interface {v8, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 383
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleCurrentTargetFound(Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;)V

    .line 384
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dialUuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->dialUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " serviceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->serviceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onNetflixMdxDeviceFound(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/log/MdxLogUtils;->reportDeviceFound(Landroid/content/Context;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    .line 386
    monitor-exit v13

    goto/16 :goto_0

    .line 389
    :cond_b
    invoke-interface {v8}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 390
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleDeviceFound DIAL device recorded"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->uuid:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->friendlyName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;->getIpa()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 392
    invoke-interface {v8, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 393
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/log/MdxLogUtils;->reportDeviceFound(Landroid/content/Context;Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private handleDeviceLost([Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 400
    array-length v2, p1

    if-nez v2, :cond_0

    .line 451
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 404
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 405
    array-length v6, p1

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_8

    aget-object v7, p1, v3

    .line 406
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleDeviceLost %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v1, v2, v8}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 407
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 408
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    .line 409
    invoke-virtual {v1, v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    instance-of v2, v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v2, :cond_4

    .line 412
    move-object v0, v1

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-object v2, v0

    .line 417
    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 419
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->shouldIgnoreDeviceLostEvent()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 421
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v7, "handleDeviceLost, ignore xprofile MDX device lost %s %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 422
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    .line 421
    invoke-static {v1, v7, v8}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 445
    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 446
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleDeviceLost, not in device list, BUG!!!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 414
    :cond_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    goto :goto_2

    .line 425
    :cond_5
    const-string/jumbo v8, "MdxControllerNative"

    const-string/jumbo v9, "handleDeviceLost, remove MDX device %s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 426
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v11

    .line 425
    invoke-static {v8, v9, v10}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 427
    instance-of v2, v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v2, :cond_6

    .line 428
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 438
    :goto_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uuid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onNetflixMdxDeviceLost(Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mCurrentTragetUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    const/16 v8, 0xc8

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v7, v8, v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 449
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 430
    :cond_6
    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;

    move-object v2, v0

    .line 431
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mdxDeviceIsLost()V

    goto :goto_4

    .line 435
    :cond_7
    const-string/jumbo v2, "MdxControllerNative"

    const-string/jumbo v8, "handleDeviceLost, remove DIAL device %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v8, v9}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 436
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 449
    :cond_8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->targetList()V

    goto/16 :goto_0
.end method

.method private handleIncommingMdxMessage(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 453
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "handleIncommingMdxMessage %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 456
    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxMessageUtils;->convertMsgToJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 457
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    const-string/jumbo v2, "pairingresponse"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "regpairreply"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "regpairerror"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    :cond_0
    const-string/jumbo v1, "targetuuid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->handlePairingResult(Lorg/json/JSONObject;)V

    .line 499
    :goto_0
    return-void

    .line 466
    :cond_1
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "handleIncommingMdxMessage, no device to handle pairing message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleIncommingMdxMessage, JSONException %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 468
    :cond_2
    :try_start_1
    const-string/jumbo v2, "session"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 469
    const-string/jumbo v1, "fromuuid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    .line 471
    if-eqz v1, :cond_3

    .line 472
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->handleIncomingSessionMessage(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 474
    :cond_3
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "handleIncommingMdxMessage, no device to handle session message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    :cond_4
    const-string/jumbo v2, "broadcast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 477
    const-string/jumbo v1, "fromuuid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_5

    .line 480
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->handleBroadCastMessage(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 482
    :cond_5
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "handleIncommingMdxMessage, no device to handle broadcast message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_6
    const-string/jumbo v2, "error"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 485
    const-string/jumbo v1, "fromuuid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_7

    .line 488
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->handleIncomingErrorMessage(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 490
    :cond_7
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "handleIncommingMdxMessage, no device to handle error message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 494
    :cond_8
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v2, "handleIncommingMdxMessage, not handling %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private handleInitialized()V
    .locals 2

    .prologue
    .line 291
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "handleInitialized"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mTranactionMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->resetAllDeviceStateAndClear()V

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->targetList()V

    .line 295
    return-void
.end method

.method private handleNativeMdxEvent(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 237
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 239
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "event has more than one elements. ignored"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "process event"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 247
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleInitialized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "process event failure %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 248
    :cond_2
    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 250
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/InitErrorEvent;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 251
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 253
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;-><init>(Lorg/json/JSONObject;)V

    .line 254
    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/StateEvent;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleNotReady()V

    goto :goto_0

    .line 257
    :cond_4
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceLostEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 258
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceLostEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 259
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceLostEvent;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceLostEvent;-><init>(Lorg/json/JSONObject;)V

    .line 260
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceLostEvent;->getDevices()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleDeviceLost([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :cond_5
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 263
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;-><init>(Lorg/json/JSONObject;)V

    .line 264
    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/DeviceFoundEvent;->getRemoteDevice()Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleDeviceFound(Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/RemoteDevice;)V

    goto/16 :goto_0

    .line 266
    :cond_6
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 267
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 268
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;-><init>(Lorg/json/JSONObject;)V

    .line 269
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/discovery/RemoteDeviceReadyEvent;->getLaunchStatus()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleRemoteDeviceReady(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 270
    :cond_7
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 271
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;-><init>(Lorg/json/JSONObject;)V

    .line 273
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageEvent;->getMsgBody()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleIncommingMdxMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_8
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 275
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;-><init>(Lorg/json/JSONObject;)V

    .line 277
    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessageDeliveredEvent;->getTransactionId()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleSendMessageResult(ZJ)V

    goto/16 :goto_0

    .line 278
    :cond_9
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 279
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->TYPE:Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/Mdx$Events;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;-><init>(Lorg/json/JSONObject;)V

    .line 281
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/event/session/MessagingErrorEvent;->getTransactionId()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->handleSendMessageResult(ZJ)V

    goto/16 :goto_0

    .line 283
    :cond_a
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "unknwon event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private handleNotReady()V
    .locals 2

    .prologue
    .line 297
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "handleNotReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mTranactionMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 299
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->resetAllDeviceStateAndClear()V

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->targetList()V

    .line 301
    return-void
.end method

.method private handleRemoteDeviceReady(Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    if-lez p2, :cond_0

    move v3, v1

    .line 304
    :goto_0
    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 305
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v2

    .line 306
    if-nez v2, :cond_1

    .line 307
    monitor-exit v4

    .line 329
    :goto_1
    return-void

    :cond_0
    move v3, v2

    .line 303
    goto :goto_0

    .line 309
    :cond_1
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v5, "handleRemoteDeviceReady %s %s launchStatus %d."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 310
    instance-of v1, v2, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;

    if-eqz v1, :cond_5

    .line 311
    move-object v0, v2

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;

    move-object v1, v0

    .line 312
    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->isLaunchStatusChanged(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->isTargetLaunched()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->shouldIgnoreDeviceLostEvent()Z

    move-result v3

    if-nez v3, :cond_4

    .line 315
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mdxDeviceIsLost()V

    .line 316
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uuid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onNetflixMdxDeviceLost(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mCurrentTragetUuid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    const/16 v3, 0xc8

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v3, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    :cond_3
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->targetList()V

    goto :goto_1

    .line 321
    :cond_4
    :try_start_1
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleRemoteDeviceReady ignore xprofile device lost."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 325
    :cond_5
    :try_start_2
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "handleRemoteDeviceReady ignored."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private handleSendMessageResult(ZJ)V
    .locals 6

    .prologue
    .line 501
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getUuidFromXid(J)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    .line 503
    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->handleSendMessageResult(Z)V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string/jumbo v1, "MdxControllerNative"

    const-string/jumbo v2, "onSendMessageResult, no target to handle message. %s %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method private native nativeLaunchNetflix(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized nativeRelease()V
.end method

.method private native nativeSendMessage(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method private native nativeSetNetworkInterface(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeStartMdx(ZLjava/lang/String;)V
.end method

.method private native nativeStopMdx()V
.end method

.method private postMdxEventFromNative(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 226
    return-void
.end method

.method private putTransactionAndPrune(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 539
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "add transaction %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 540
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getXid()J

    move-result-wide v2

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mTranactionMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 542
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 544
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 545
    const-wide/16 v6, 0x1b58

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 547
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mTranactionMap:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$5;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$7;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$7;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$6;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    .line 121
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    monitor-exit v1

    .line 126
    :goto_0
    return-object v0

    .line 125
    :cond_1
    monitor-exit v1

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public launchNetflix(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 138
    const-string/jumbo v0, "intent=sync"

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$2;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$2;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x55f0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    return-void
.end method

.method public restartDiscovery()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 151
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "sendMessage message=%s url=%s uuid=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$3;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method public setCurrentTargte(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mCurrentTragetUuid:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mCurrentTragetUuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->resetAllDeviceStateExcept(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setMdxNetworkInterface(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    const-string/jumbo v0, "MdxControllerNative"

    const-string/jumbo v1, "setMdxNetworkInterface %s %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix$4;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method
