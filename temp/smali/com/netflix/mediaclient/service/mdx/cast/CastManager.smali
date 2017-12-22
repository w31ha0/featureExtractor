.class public Lcom/netflix/mediaclient/service/mdx/cast/CastManager;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "CastManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;


# static fields
.field private static final CAST_SERVICE_PREFIX:Ljava/lang/String; = "CastMediaRouteProviderService:"

.field static final NETFLIX_NAMESPACE:Ljava/lang/String; = "urn:x-cast:mdx-netflix-com:service:target:2"

.field private static final NF_APPID:Ljava/lang/String; = "CA5E8412"

.field private static final RE_DISCOVER_AFTER_PREVIOUS_MS:J = 0x3e80L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationId:Ljava/lang/String;

.field private mCallbackAdded:Z

.field private mCastManagerStarted:Z

.field private mCastPrefix:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEventListener:Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

.field private mForceLaunch:Z

.field private mMainHandler:Landroid/os/Handler;

.field private final mMapOfRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

.field private mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

.field private mMyUuid:Ljava/lang/String;

.field private mPreviousDiscoveryTime:J

.field private mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

.field private mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mTargetId:Ljava/lang/String;

.field private mWorkerHandler:Landroid/os/Handler;

.field private mediaRouter:Landroid/support/v7/media/MediaRouter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    .line 36
    const-string/jumbo v0, "CA5E8412"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    .line 58
    if-nez p4, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ESN can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    .line 64
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    .line 65
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMyUuid:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$1;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter;)Landroid/support/v7/media/MediaRouter;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mEventListener:Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->startDiscovery()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->stopDiscovery()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    return-object v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;)Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mForceLaunch:Z

    return p1
.end method

.method private addCallback()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCallbackAdded:Z

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v2, p0, v1}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 715
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCallbackAdded:Z

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "addCallback mediaRouterIsNull=%b mCallbackAdded=%b"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCallbackAdded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 6

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    const-string/jumbo v0, "launch route is null"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onFailToLaunch(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v3

    .line 245
    if-nez v3, :cond_1

    .line 246
    const-string/jumbo v0, "launch CastDevice is null"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onFailToLaunch(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mForceLaunch:Z

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/cast/CastDevice;Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication$MdxCastApplicaCallback;Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    goto :goto_0
.end method

.method private createCastHandShakeMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 476
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 481
    :try_start_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "castHandShake"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "uuid"

    .line 482
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "controlleruuid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMyUuid:Ljava/lang/String;

    .line 483
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "friendlyName"

    .line 484
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "payload"

    const-string/jumbo v3, "intent=sync"

    .line 485
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createCastHandShakeMessage failed, e"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createCastMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->findReqPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const-string/jumbo v0, ""

    .line 512
    :goto_0
    return-object v0

    .line 504
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 506
    :try_start_0
    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "body"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createMessage failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findReqPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 516
    const-string/jumbo v0, "action="

    .line 517
    const-string/jumbo v0, "\r\n"

    .line 518
    const-string/jumbo v0, "action="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 519
    if-ltz v0, :cond_0

    .line 520
    const-string/jumbo v1, "action="

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 521
    const-string/jumbo v2, "\r\n"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 522
    if-le v0, v1, :cond_0

    .line 523
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 526
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIpAddress(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->getIpAddress()Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 553
    return-object v0
.end method

.method private getUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    const-string/jumbo v0, "CastMediaRouteProviderService:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "CastMediaRouteProviderService:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logCastDevice(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 542
    return-void
.end method

.method private notifyDeviceFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mEventListener:Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CastManagerListener is not set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$6;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifyDeviceLost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mEventListener:Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CastManagerListener is not set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$7;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$7;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifyLaunchResult(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mEventListener:Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CastManagerListener is not set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$8;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifyMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mEventListener:Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

    if-nez v0, :cond_0

    .line 323
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CastManagerListener is not set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$10;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifySendMessageResult(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mEventListener:Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

    if-nez v0, :cond_0

    .line 310
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CastManagerListener is not set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$9;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifySessionend()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_1

    .line 680
    const-string/jumbo v0, "session"

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 686
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mTargetId:Ljava/lang/String;

    .line 688
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "action=endCastSession\r\nfromuuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "session"

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifyMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_1
    return-void
.end method

.method private removeCallback()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 722
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCallbackAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 724
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCallbackAdded:Z

    .line 728
    :goto_0
    return-void

    .line 726
    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeCallback mediaRouterIsNull=%b mCallbackAdded=%b"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCallbackAdded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private sendCastMessage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    if-eqz v0, :cond_0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCastMessage caught an exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendMessageToBackgroundReceiver(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$11;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method private startDiscovery()V
    .locals 5

    .prologue
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 218
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->addCallback()V

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startDiscovery "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private stopDiscovery()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopDiscovery hasSelectedRoute=%b"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v5, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 232
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->removeCallback()V

    .line 233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 236
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopDiscovery done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    :cond_0
    move v0, v1

    .line 231
    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    .line 148
    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mEventListener:Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

    .line 149
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$4;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public launchNetflix(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$5;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public onApplicationStopped(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 701
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 702
    if-eqz v0, :cond_0

    .line 703
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": netflix stopped, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onApplicationStopped(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifySessionend()V

    .line 707
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifyLaunchResult(ZLjava/lang/String;)V

    .line 709
    :cond_0
    return-void
.end method

.method public onFailToConnect(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 566
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToConnect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": cannot connect to netflix, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onFailToConnect(Ljava/lang/String;)V

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifySessionend()V

    .line 573
    return-void
.end method

.method public onFailToLaunch(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 581
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToLaunch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": cannot launch netflix, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onFailToLaunch(Ljava/lang/String;)V

    .line 584
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifyLaunchResult(ZLjava/lang/String;)V

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToLaunch, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFailToSendMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 669
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToSendMessage"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": cannot send message, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onFailToSendMessage(Ljava/lang/String;)V

    .line 672
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifySendMessageResult(ZLjava/lang/String;)V

    .line 676
    :goto_0
    return-void

    .line 674
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailToSendMessage, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLaunched()V
    .locals 2

    .prologue
    .line 596
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->createCastHandShakeMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->sendCastMessage(Ljava/lang/String;)V

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onLaunched, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMessageReceived(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 630
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 631
    const-string/jumbo v0, "body"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    const-string/jumbo v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 634
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 638
    :cond_0
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 644
    const-string/jumbo v3, "castHandShakeAck"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v3, :cond_1

    .line 645
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifyLaunchResult(ZLjava/lang/String;)V

    .line 661
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 641
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error onMessageReceived "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 647
    :cond_1
    const-string/jumbo v3, "castHandShakeRequest"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 648
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageReceived castHandShakeRequest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onLaunched()V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v1, :cond_3

    .line 657
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifyMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageReceived, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMessageSent()V
    .locals 2

    .prologue
    .line 611
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageSent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifySendMessageResult(ZLjava/lang/String;)V

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMessageSent, no selected route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    .prologue
    .line 448
    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 383
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 384
    if-nez v0, :cond_0

    .line 385
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "device is not whitelisted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastPrefix:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 389
    :goto_1
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getIpAddress(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifyDeviceFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .prologue
    .line 413
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 414
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    if-eqz p2, :cond_0

    .line 403
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->notifyDeviceLost(Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->castLaunchApplication(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 355
    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;->stop()V

    .line 368
    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedMdxCastApp:Lcom/netflix/mediaclient/service/mdx/cast/MdxCastApplication;

    .line 370
    :cond_0
    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mSelectedRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 371
    return-void
.end method

.method public prefetchVideo(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 429
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sending prefetch message, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMapOfRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 432
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 433
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 434
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "schedule sending message to cast device, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->sendMessageToBackgroundReceiver(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method public restartCastDiscoveryIfNeeded()V
    .locals 6

    .prologue
    .line 200
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restartCastDiscoveryIfNeeded"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 202
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    const-wide/16 v4, 0x3e80

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v2, :cond_0

    .line 205
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mPreviousDiscoveryTime:J

    .line 206
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->removeCallback()V

    .line 207
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "restartCastDiscoveryIfNeeded, restarted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->addCallback()V

    .line 210
    :cond_0
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->createCastMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->sendCastMessage(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setCastManagerEventListener(Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mEventListener:Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;

    .line 79
    return-void
.end method

.method public setCastWhiteList(Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastManagerStarted:Z

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CastManager already started, you must stop it before starting it."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastManagerStarted:Z

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getNewCastApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getNewCastApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setCastApplicationId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mApplicationId:Ljava/lang/String;

    .line 100
    invoke-static {v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :try_start_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$2;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    :try_start_4
    sget-object v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaRouteSelector: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "==invalid ApplicationId=="

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->setCastApplicationId(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "Invalid ApplicationId, Enter New One"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid ApplicationId!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 119
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mCastManagerStarted:Z

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager$3;-><init>(Lcom/netflix/mediaclient/service/mdx/cast/CastManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
