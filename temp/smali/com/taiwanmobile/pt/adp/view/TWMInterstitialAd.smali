.class public Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;
.super Ljava/lang/Object;
.source "TWMInterstitialAd.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/TWMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;
    }
.end annotation


# instance fields
.field private a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

.field private final b:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

.field private g:Ljava/lang/ref/WeakReference;

.field private h:Z

.field private i:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 40
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    .line 58
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->c:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    .line 214
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->h:Z

    .line 281
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->i:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    .line 209
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e:Ljava/lang/String;

    .line 210
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 211
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    invoke-direct {v1, p0, v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    .line 210
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 56
    :cond_0
    return-void
.end method

.method private a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Z)V
    .locals 0

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    return-object v0
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 272
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "adsing"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 274
    if-nez v0, :cond_0

    .line 275
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->h:Z

    .line 277
    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->h:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->i:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    return-object v0
.end method

.method static synthetic d(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic g(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a()V

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 294
    const-string v2, "TWMInterstitialAd"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AdManager.getInstance().get("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") is not null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    .line 298
    const-string v2, "kil"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    const-string v1, "kil"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 300
    const-string v1, "TWMInterstitialAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLoaded ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 309
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 294
    goto :goto_0
.end method

.method public isReady()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)V
    .locals 8

    .prologue
    .line 318
    const-string v0, "TWMInterstitialAd"

    const-string v1, "loadAd invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->isActivitySettingValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "TWMAd"

    invoke-virtual {v0, v1, p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const-string v0, "TWMInterstitialAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAdLoading ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->i:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 325
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e:Ljava/lang/String;

    const/4 v2, 0x0

    .line 327
    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    const/4 v5, 0x1

    const-string v6, "I"

    const-string v7, "TWMInterstitialAd"

    move-object v3, p1

    .line 326
    invoke-static/range {v0 .. v7}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->fireAdRequest2(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 342
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 218
    const-string v0, "TWMInterstitialAd"

    const-string v1, "show invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "TWMInterstitialAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "txId != null ? "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$2;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$2;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->launchAdActivity(Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_2
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$3;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$3;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)V

    .line 249
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->h:Z

    .line 349
    return-void
.end method
