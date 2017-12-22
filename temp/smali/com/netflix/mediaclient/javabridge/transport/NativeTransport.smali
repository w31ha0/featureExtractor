.class public Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;
.super Ljava/lang/Object;
.source "NativeTransport.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/transport/Transport;


# static fields
.field private static final PLAYER_TYPE_JPLAYER2:I = 0xc

.field private static final TAG:Ljava/lang/String; = "nf-NativeTransport"

.field private static final TAG1:Ljava/lang/String; = "nf_net"


# instance fields
.field private bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

.field private mDeviceModel:Ljava/lang/String;

.field private mEsn:Ljava/lang/String;

.field private mEsnPrefix:Ljava/lang/String;

.field private final mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

.field private mIpConnectivityPolicy:I

.field private final mNeedsToDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRootFileSystem:Ljava/lang/String;

.field private mVideoBufferSize:I

.field private final mWeakThis:Ljava/lang/Object;

.field private final proxy:Lcom/netflix/mediaclient/javabridge/NrdProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    .line 44
    invoke-static {v0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_init(I)Z

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;Lcom/netflix/mediaclient/javabridge/NrdProxy;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mVideoBufferSize:I

    .line 61
    sget-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V6_V4:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->getValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mIpConnectivityPolicy:I

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mNeedsToDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "NativeTransport constructor start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    .line 90
    iput-object p2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->proxy:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NativeTransport"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 97
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;-><init>(Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mWeakThis:Ljava/lang/Object;

    .line 104
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "NativeTransport constructor done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;)Lcom/netflix/mediaclient/javabridge/NrdProxy;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->proxy:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    return-object v0
.end method

.method private connect(Ljava/lang/String;Lcom/netflix/mediaclient/util/DeviceCategory;)V
    .locals 2

    .prologue
    .line 115
    if-nez p2, :cond_0

    .line 116
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Device class is uknown! It should not happen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object p2, Lcom/netflix/mediaclient/util/DeviceCategory;->UNKNOWN:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 120
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p2}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_connect(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mNeedsToDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    return-void
.end method

.method public static enableCrashHandler()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public static getDnsList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_getDnsList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeTimeMono()J
    .locals 2

    .prologue
    .line 411
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_getTimeMono()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNativeTimeNow()J
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_getTimeNow()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSupportedVideoProfiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_getSupportedProfiles()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synchronized native declared-synchronized native_connect(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static final synchronized native declared-synchronized native_getDnsList()[Ljava/lang/String;
.end method

.method private static final synchronized native declared-synchronized native_getSupportedProfiles()[Ljava/lang/String;
.end method

.method private static final synchronized native declared-synchronized native_getTimeMono()J
.end method

.method private static final synchronized native declared-synchronized native_getTimeNow()J
.end method

.method private static final synchronized native declared-synchronized native_init(I)Z
.end method

.method private final synchronized native declared-synchronized native_invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private synchronized native declared-synchronized native_release()V
.end method

.method private native native_setProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private final synchronized native declared-synchronized native_setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final synchronized native declared-synchronized native_uiLoaded()V
.end method

.method private final synchronized native declared-synchronized native_uiUnloaded()V
.end method

.method private static native native_updateNetworkInterfaces(Ljava/lang/String;)V
.end method

.method private onCrashFromNative(IJJJ)V
    .locals 12

    .prologue
    .line 390
    const-string/jumbo v2, "nf-NativeTransport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got crash from native: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", signo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", errno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/Signal;->toSignal(I)Lcom/netflix/mediaclient/servicemgr/Signal;

    move-result-object v3

    .line 392
    if-eqz v3, :cond_0

    .line 393
    const-string/jumbo v2, "nf-NativeTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got crash from native: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/Signal;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    :try_start_0
    new-instance v2, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;-><init>(Lcom/netflix/mediaclient/servicemgr/Signal;JJJI)V

    .line 400
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->proxy:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-interface {v3, v2}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->postCrashReport(Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_1
    return-void

    .line 395
    :cond_0
    const-string/jumbo v2, "nf-NativeTransport"

    const-string/jumbo v4, "Got crash from native and it is not know. This should never happen!"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    :catch_0
    move-exception v2

    .line 402
    const-string/jumbo v3, "nf-NativeTransport"

    const-string/jumbo v4, "Failed to send crash report!"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static postEventFromNative(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 266
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;

    .line 267
    if-nez v0, :cond_0

    .line 268
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Native transport is NULL. This should NOT happen, event can not be handled!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 274
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 276
    :cond_1
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Event handler is NULL. Unable to post handler!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUpdatedNetworkInterfaces(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;-><init>(Landroid/content/Context;)V

    .line 416
    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetNetworkInterfaces;->getArguments()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_updateNetworkInterfaces(Ljava/lang/String;)V

    .line 417
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 342
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "close:: noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void
.end method

.method public connect()V
    .locals 6

    .prologue
    .line 285
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "connect started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    if-nez v0, :cond_0

    .line 288
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "App is null? This SHOULD NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getFileSystemRoot()Ljava/lang/String;

    move-result-object v4

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    .line 294
    const-string/jumbo v1, "rootFileSystemn"

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mRootFileSystem:Ljava/lang/String;

    .line 295
    const-string/jumbo v1, "esn"

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEsn:Ljava/lang/String;

    .line 296
    const-string/jumbo v1, "esnPrefix"

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getESNPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEsnPrefix:Ljava/lang/String;

    .line 297
    const-string/jumbo v1, "modelId"

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDeviceModel:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getConfigVideoBufferSize()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mVideoBufferSize:I

    .line 308
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEsn:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEsnPrefix:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDeviceModel:Ljava/lang/String;

    iget v5, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mVideoBufferSize:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_setProperties(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getInstallationSource()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->connect(Ljava/lang/String;Lcom/netflix/mediaclient/util/DeviceCategory;)V

    .line 311
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "connect done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "disconnect started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mNeedsToDestroy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_release()V

    .line 333
    :goto_0
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "disconnect done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    .line 330
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Trying NativeTransport.disconnect while it wasn\'t connected in the first place."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
    .locals 3

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Command can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Handled by bridge"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/javabridge/invoke/Invoke;->getObject()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/javabridge/invoke/Invoke;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/javabridge/invoke/Invoke;->getArguments()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string/jumbo v1, "nf-NativeTransport"

    const-string/jumbo v2, "Failure in JNI. It may happend than NRDApp is null!"

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 169
    .line 170
    if-nez p1, :cond_1

    .line 171
    const-string/jumbo p1, "nrdp"

    .line 178
    :goto_0
    if-nez p3, :cond_0

    .line 179
    const-string/jumbo p3, ""

    .line 184
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_1
    return-void

    .line 172
    :cond_1
    const-string/jumbo v0, "nrdp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "setProperty:: Already starts nrdp"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nrdp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    const-string/jumbo v1, "nf-NativeTransport"

    const-string/jumbo v2, "Failure in JNI. It may happend than NRDApp is null!"

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 138
    .line 139
    if-nez p1, :cond_0

    .line 140
    const-string/jumbo p1, "nrdp"

    .line 149
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    return-void

    .line 141
    :cond_0
    const-string/jumbo v0, "nrdp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "setProperty:: Already starts nrdp"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nrdp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string/jumbo v1, "nf-NativeTransport"

    const-string/jumbo v2, "Failure in JNI. It may happend than NRDApp is null!"

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public uiLoaded()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_uiLoaded()V

    .line 352
    return-void
.end method

.method public uiUnloaded()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_uiUnloaded()V

    .line 361
    return-void
.end method
