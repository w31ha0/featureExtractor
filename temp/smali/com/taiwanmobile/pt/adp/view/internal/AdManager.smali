.class public Lcom/taiwanmobile/pt/adp/view/internal/AdManager;
.super Ljava/lang/Object;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Banner;,
        Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;,
        Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;,
        Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;,
        Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;,
        Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;
    }
.end annotation


# static fields
.field public static final KEY_AD_SHOWING:Ljava/lang/String; = "adsing"

.field public static final KEY_BROADCASTRECEIVER_REGISTER:Ljava/lang/String; = "bcr"

.field public static final KEY_VOLLEY_QUEUE:Ljava/lang/String; = "_queue"

.field public static final TAG_REQUEST_BANNER:Ljava/lang/String; = "TWMAdView"

.field public static final TAG_REQUEST_FLOATVIEW:Ljava/lang/String; = "TWMFloatAdView"

.field public static final TAG_REQUEST_INTERSTITIAL:Ljava/lang/String; = "TWMInterstitialAd"

.field public static final TAG_REQUEST_NATIVE:Ljava/lang/String; = "TWMNativeAd"

.field public static final TAG_REQUEST_VIDEO:Ljava/lang/String; = "TWMVideoAd"

.field private static volatile a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 193
    return-void
.end method

.method public static getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    if-nez v0, :cond_1

    .line 182
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    .line 183
    :try_start_0
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    invoke-direct {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;-><init>()V

    sput-object v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    .line 182
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_1
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isReceiverRegistered()Z
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "adsing"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    const-string v0, "bcr"

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 28
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method
