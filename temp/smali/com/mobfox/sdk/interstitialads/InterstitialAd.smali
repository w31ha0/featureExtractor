.class public Lcom/mobfox/sdk/interstitialads/InterstitialAd;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# static fields
.field static secure:Z


# instance fields
.field banner:Lcom/mobfox/sdk/bannerads/Banner;

.field bannerListener:Lcom/mobfox/sdk/bannerads/BannerListener;

.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field interstitial:Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

.field protected iterator:Lcom/mobfox/sdk/interstitialads/EventIterator;

.field listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

.field loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

.field private final lock:Ljava/lang/Object;

.field ready:Z

.field s:Ljava/lang/String;

.field self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->secure:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->s:Ljava/lang/String;

    .line 37
    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->context:Landroid/content/Context;

    .line 47
    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    .line 52
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->ready:Z

    .line 56
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->lock:Ljava/lang/Object;

    .line 189
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->context:Landroid/content/Context;

    .line 190
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->handler:Landroid/os/Handler;

    .line 191
    iput-object p0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    .line 195
    const/16 v5, 0x140

    .line 196
    .local v5, "width":I
    const/16 v1, 0x1e0

    .line 200
    .local v1, "height":I
    :try_start_0
    invoke-static {p1}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    .line 201
    .local v4, "size":Landroid/graphics/Point;
    invoke-static {v4}, Lcom/mobfox/sdk/bannerads/SizeUtils;->getNearestSupported(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 203
    .local v2, "nearest":Landroid/graphics/Point;
    iget v5, v2, Landroid/graphics/Point;->x:I

    .line 204
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v3, v6, Landroid/content/res/Configuration;->orientation:I

    .line 207
    .local v3, "orientation":I
    if-eq v3, v8, :cond_0

    if-nez v3, :cond_1

    .line 208
    :cond_0
    invoke-virtual {p0, p1, v5, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->createAd(Landroid/content/Context;II)Lcom/mobfox/sdk/bannerads/Banner;

    move-result-object v6

    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    .line 210
    :cond_1
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 211
    invoke-virtual {p0, p1, v1, v5}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->createAd(Landroid/content/Context;II)Lcom/mobfox/sdk/bannerads/Banner;

    move-result-object v6

    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    .end local v2    # "nearest":Landroid/graphics/Point;
    .end local v3    # "orientation":I
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v6, v8}, Lcom/mobfox/sdk/bannerads/Banner;->setSkip(Z)V

    .line 223
    iget-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    const-string v7, "interstitial"

    invoke-virtual {v6, v7}, Lcom/mobfox/sdk/bannerads/Banner;->setAdFormat(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->setup()V

    .line 228
    new-instance v6, Lcom/mobfox/sdk/interstitialads/InterstitialAd$2;

    invoke-direct {v6, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialAd$2;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V

    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->bannerListener:Lcom/mobfox/sdk/bannerads/BannerListener;

    .line 258
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MobFoxInterstitial"

    const-string v7, "create ad"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0, p1, v5, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->createAd(Landroid/content/Context;II)Lcom/mobfox/sdk/bannerads/Banner;

    move-result-object v6

    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Throwable;
    const-string v6, "MobFoxInterstitial"

    const-string v7, "create banner throwable"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0, p1, v5, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->createAd(Landroid/content/Context;II)Lcom/mobfox/sdk/bannerads/Banner;

    move-result-object v6

    iput-object v6, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    goto :goto_0
.end method

.method public static getLocation(Z)V
    .locals 0
    .param p0, "loc"    # Z

    .prologue
    .line 374
    invoke-static {p0}, Lcom/mobfox/sdk/bannerads/Banner;->setLoc(Z)V

    .line 375
    return-void
.end method

.method public static setSecure(Z)V
    .locals 0
    .param p0, "secure"    # Z

    .prologue
    .line 349
    sput-boolean p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->secure:Z

    .line 350
    invoke-static {p0}, Lcom/mobfox/sdk/bannerads/Banner;->setSecure(Z)V

    .line 351
    return-void
.end method


# virtual methods
.method protected createAd(Landroid/content/Context;II)Lcom/mobfox/sdk/bannerads/Banner;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 262
    :try_start_0
    new-instance v1, Lcom/mobfox/sdk/bannerads/Banner;

    invoke-direct {v1, p1, p2, p3}, Lcom/mobfox/sdk/bannerads/Banner;-><init>(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "MobFoxInterstitial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create ad exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v2

    .line 267
    goto :goto_0

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MobFoxInterstitial"

    const-string v3, "create ad throwable"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 270
    goto :goto_0
.end method

.method public getBanner()Lcom/mobfox/sdk/bannerads/Banner;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    return-object v0
.end method

.method public getIterator()Lcom/mobfox/sdk/interstitialads/EventIterator;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->iterator:Lcom/mobfox/sdk/interstitialads/EventIterator;

    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->ready:Z

    return v0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 286
    const-string v0, "MobFoxInterstitial"

    const-string v1, "please set inventory hash before load()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "please set inventory hash before load()"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialFailed(Lcom/mobfox/sdk/interstitialads/InterstitialAd;Ljava/lang/Exception;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_2

    .line 292
    const-string v0, "MobFoxInterstitial"

    const-string v1, "please set interstitial listener before load()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/bannerads/Banner;->setInventoryHash(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->bannerListener:Lcom/mobfox/sdk/bannerads/BannerListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/bannerads/Banner;->setListener(Lcom/mobfox/sdk/bannerads/BannerListener;)V

    .line 297
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->load()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->onPause()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mobfox/sdk/bannerads/Banner;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->onResume()V

    goto :goto_0
.end method

.method public setInventoryHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->s:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setListener(Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    .line 359
    return-void
.end method

.method protected setOrientation(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 275
    if-ne p2, v1, :cond_0

    move-object v0, p1

    .line 276
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 279
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 280
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 282
    :cond_1
    return-void
.end method

.method public setSkip(Z)V
    .locals 1
    .param p1, "skip"    # Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0, p1}, Lcom/mobfox/sdk/bannerads/Banner;->setSkip(Z)V

    .line 367
    return-void
.end method

.method public setStart_muted(Z)V
    .locals 1
    .param p1, "start_muted"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0, p1}, Lcom/mobfox/sdk/bannerads/Banner;->setStart_muted(Z)V

    .line 371
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0, p1}, Lcom/mobfox/sdk/bannerads/Banner;->setType(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method protected setup()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    .line 183
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->loadAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/bannerads/Banner;->setLoadAdListener(Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;)V

    .line 184
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->interstitial:Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    if-nez v0, :cond_1

    .line 302
    const-string v0, "MobFoxInterstitial"

    const-string v1, "please call show() from onInterstitialLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "please call show() from onInterstitialLoaded"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialFailed(Lcom/mobfox/sdk/interstitialads/InterstitialAd;Ljava/lang/Exception;)V

    goto :goto_0

    .line 307
    :cond_1
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd$3;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialAd$3;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
