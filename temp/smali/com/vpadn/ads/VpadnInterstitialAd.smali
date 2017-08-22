.class public Lcom/vpadn/ads/VpadnInterstitialAd;
.super Landroid/widget/RelativeLayout;
.source "VpadnInterstitialAd.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/vpadn/ads/VpadnAd;
.implements Lvpadn/ao;


# instance fields
.field protected a:Lvpadn/ah;

.field private b:Lcom/vpadn/ads/VpadnAdListener;

.field private c:Landroid/app/Activity;

.field private d:Z

.field private e:Lcom/vpadn/ads/DebugListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v2, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    .line 34
    iput-object v2, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    .line 40
    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->d:Z

    .line 57
    iput-object p1, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->c:Landroid/app/Activity;

    .line 58
    invoke-virtual {p0, v0}, Lcom/vpadn/ads/VpadnInterstitialAd;->setBackgroundColor(I)V

    .line 59
    invoke-static {p1}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    .line 62
    new-instance v0, Lvpadn/ah;

    invoke-direct {v0, p1, p0}, Lvpadn/ah;-><init>(Landroid/app/Activity;Lvpadn/ao;)V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    .line 71
    if-nez p2, :cond_0

    .line 72
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->d:Z

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0, p2}, Lvpadn/ah;->a(Ljava/lang/String;)V

    .line 77
    if-nez p3, :cond_1

    .line 78
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->d:Z

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0, p3}, Lvpadn/ah;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->b()V

    .line 360
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->c()V

    .line 361
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bs;->k()V

    .line 363
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/vpadn/ads/VpadnInterstitialAd$3;

    invoke-direct {v1, p0}, Lcom/vpadn/ads/VpadnInterstitialAd$3;-><init>(Lcom/vpadn/ads/VpadnInterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0}, Lvpadn/ah;->i()Z

    move-result v0

    .line 119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/br;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const-string v0, "VponInterstitialAd"

    const-string v1, "[interstitial] permission-checking  is failde in loadAd!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/au;->e()Z

    move-result v0

    .line 139
    if-eqz v0, :cond_4

    .line 140
    invoke-static {}, Lvpadn/au;->a()Lvpadn/au;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lvpadn/au;->c(Landroid/content/Context;)Z

    move-result v0

    .line 141
    if-nez v0, :cond_2

    .line 142
    const-string v0, "VponInterstitialAd"

    const-string v1, "isRunningGooglePlayService(mContext) return false"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sput-boolean v2, Lvpadn/ac;->a:Z

    .line 151
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->e:Lcom/vpadn/ads/DebugListener;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    iget-object v1, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->e:Lcom/vpadn/ads/DebugListener;

    invoke-virtual {v0, v1}, Lvpadn/ah;->a(Lcom/vpadn/ads/DebugListener;)V

    .line 155
    :cond_3
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->d:Z

    if-nez v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->c:Landroid/app/Activity;

    .line 159
    new-instance v1, Lcom/vpadn/ads/VpadnInterstitialAd$1;

    invoke-direct {v1, p0, p1}, Lcom/vpadn/ads/VpadnInterstitialAd$1;-><init>(Lcom/vpadn/ads/VpadnInterstitialAd;Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 167
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vpadn/ads/VpadnInterstitialAd$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/vpadn/ads/VpadnInterstitialAd$2;-><init>(Lcom/vpadn/ads/VpadnInterstitialAd;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 146
    :cond_4
    const-string v0, "VponInterstitialAd"

    const-string v1, "isExistGooglePlayServiceClass() return false"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sput-boolean v2, Lvpadn/ac;->a:Z

    goto :goto_1

    .line 186
    :cond_5
    const-string v0, "VponInterstitialAd"

    const-string v1, "[interstitial] invalid parameters in loadAd!!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    goto :goto_0
.end method

.method public onControllerWebViewReady(II)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 328
    const-string v0, "VponInterstitialAd"

    const-string v1, "onDetachedFromWindow in VponInterstitialAd"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 337
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bo;->b(Landroid/content/Context;)Lvpadn/bo;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bo;->c()V

    .line 338
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->c:Landroid/app/Activity;

    invoke-static {v0}, Lvpadn/bs;->b(Landroid/content/Context;)Lvpadn/bs;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bs;->k()V

    .line 340
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0}, Lvpadn/ah;->b()V

    .line 342
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0}, Lvpadn/ah;->k()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    .line 346
    :cond_0
    return-void
.end method

.method public onLeaveExpandMode()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public onPrepareExpandMode()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0, p1}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 238
    :cond_0
    return-void
.end method

.method public onVponAdReceived()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnReceiveAd(Lcom/vpadn/ads/VpadnAd;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onVponDismiss()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnDismissScreen(Lcom/vpadn/ads/VpadnAd;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onVponLeaveApplication()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnLeaveApplication(Lcom/vpadn/ads/VpadnAd;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onVponPresent()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    invoke-interface {v0, p0}, Lcom/vpadn/ads/VpadnAdListener;->onVpadnPresentScreen(Lcom/vpadn/ads/VpadnAd;)V

    .line 248
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/vpadn/ads/VpadnAdListener;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->b:Lcom/vpadn/ads/VpadnAdListener;

    .line 201
    return-void
.end method

.method public setDebugListener(Lcom/vpadn/ads/DebugListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    const-string v0, "VponInterstitialAd"

    const-string v1, "setDebugListener method only for testing"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object p1, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->e:Lcom/vpadn/ads/DebugListener;

    .line 217
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0}, Lvpadn/ah;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0}, Lvpadn/ah;->j()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "VponInterstitialAd"

    const-string v1, "call show() but is not ready!"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public testSendJsonToVponCordovaPlugin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    const-string v0, "VponInterstitialAd"

    const-string v1, "Cannot call testSendJsonToVponCordovaPlugin, this method is just for testing"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/vpadn/ads/VpadnInterstitialAd;->a:Lvpadn/ah;

    invoke-virtual {v0, p1, p2, p3}, Lvpadn/ah;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_0
    return-void
.end method
