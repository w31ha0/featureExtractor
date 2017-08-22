.class public Lcom/mobfox/sdk/interstitialads/InterstitialActivity;
.super Landroid/app/Activity;
.source "InterstitialActivity.java"


# instance fields
.field adResp:Lorg/json/JSONObject;

.field adRespString:Ljava/lang/String;

.field callerOrientation:I

.field ready:Z

.field renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

.field self:Landroid/app/Activity;

.field videoLocalPath:Ljava/lang/String;

.field videoView:Lcom/mobfox/sdk/video/VASTView;

.field webView:Lcom/mobfox/sdk/webview/MobFoxWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->ready:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adResp:Lorg/json/JSONObject;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoLocalPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 333
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 334
    const-string v0, "onAdClosed"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->unlock()V

    .line 336
    return-void
.end method

.method hideBar()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    .line 112
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, "decorView":Landroid/view/View;
    const/4 v2, 0x4

    .line 120
    .local v2, "uiOptions":I
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 124
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method isLandscapeVideo()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 132
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "adResp"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adRespString:Ljava/lang/String;

    .line 134
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adRespString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adResp:Lorg/json/JSONObject;

    .line 136
    iget-object v4, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adResp:Lorg/json/JSONObject;

    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    const/4 v3, 0x1

    .line 150
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MobFoxInterstitial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adResp json exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "data"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :goto_1
    const-string v4, "onError"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->finish()V

    goto :goto_0

    .line 146
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method lock()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 347
    :try_start_0
    iget v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->callerOrientation:I

    .line 348
    .local v1, "orientation":I
    if-eq v1, v4, :cond_0

    if-nez v1, :cond_1

    .line 349
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    .line 351
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 352
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v1    # "orientation":I
    :cond_2
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MobFoxInterstitial"

    const-string v3, "interstitial activity lock orientation exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    .line 343
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->requestWindowFeature(I)Z

    .line 69
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->isLandscapeVideo()Z

    move-result v1

    .line 72
    .local v1, "isLandscapeVideo":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v6, :cond_1

    .line 73
    invoke-virtual {p0, v5}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0, v5}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "orientation"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->callerOrientation:I

    .line 82
    if-nez v1, :cond_4

    iget v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->callerOrientation:I

    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_4

    .line 83
    iget v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->callerOrientation:I

    if-ne v2, v6, :cond_3

    .line 84
    invoke-virtual {p0, v5}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    .line 86
    :cond_3
    iget v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->callerOrientation:I

    if-ne v2, v4, :cond_0

    .line 87
    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 90
    :cond_4
    if-nez v1, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_5

    .line 92
    invoke-virtual {p0, v5}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    .line 94
    :cond_5
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_6

    .line 95
    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    .line 100
    :cond_6
    :try_start_0
    const-string v2, "videoLocalPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoLocalPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->hideBar()V

    .line 104
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setupWebView()V

    goto :goto_0

    .line 101
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 318
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/webview/MobFoxWebView;->onPause()V

    .line 320
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->onPause()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 326
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->onResume()V

    .line 328
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/webview/MobFoxWebView;->onResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 371
    return-void
.end method

.method protected sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 293
    const-string v1, "MobFoxInterstitial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inter activity >>> Broadcasting message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "interstitialEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "interstitialEventIntent":Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 301
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 305
    return-void
.end method

.method public setWebView(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 0
    .param p1, "webView"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 366
    return-void
.end method

.method setupWebView()V
    .locals 9

    .prologue
    const/high16 v2, -0x1000000

    .line 156
    iput-object p0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->self:Landroid/app/Activity;

    .line 158
    new-instance v0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialActivity;)V

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    .line 238
    new-instance v0, Lcom/mobfox/sdk/webview/MobFoxWebView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;)V

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 239
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v0, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setBackgroundColor(I)V

    .line 240
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->renderAdListener:Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setRenderAdListener(Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;)V

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adResp:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->self:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/mobfox/sdk/video/VASTView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    .line 248
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->setBackgroundColor(I)V

    .line 249
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v8, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v8, "videoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0, v8}, Lcom/mobfox/sdk/video/VASTView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->self:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v3, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adResp:Lorg/json/JSONObject;

    const-string v4, "options"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adResp:Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/mobfox/sdk/utils/Utils;->getClickVideoResp(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoLocalPath:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/mobfox/sdk/video/VASTView;->init(Landroid/content/Context;Landroid/webkit/WebView;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/webview/MobFoxWebView;->getVideoBridge()Lcom/mobfox/sdk/video/VideoBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VideoBridge;->setVASTView(Lcom/mobfox/sdk/video/VASTView;)V

    .line 257
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adResp:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAd(Lorg/json/JSONObject;)V

    .line 258
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->videoView:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->useVastView(Lcom/mobfox/sdk/video/VASTView;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 289
    .end local v8    # "videoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v7

    .line 263
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "MobFoxBanner"

    const-string v1, "not video event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adResp:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->adResp:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAd(Lorg/json/JSONObject;)V

    .line 273
    invoke-virtual {p0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->useWebView()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 276
    :catch_1
    move-exception v7

    .line 277
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "MobFoxBanner"

    const-string v1, "not banner event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v6, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v0, "data"

    const-string v1, "no ad in resppnse"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    .line 288
    :goto_3
    const-string v0, "onError"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v6    # "data":Lorg/json/JSONObject;
    :catch_2
    move-exception v7

    .line 265
    .local v7, "e":Ljava/lang/Throwable;
    const-string v0, "MobFoxBanner"

    const-string v1, "type video throwable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 278
    .end local v7    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v7

    .line 279
    .restart local v7    # "e":Ljava/lang/Throwable;
    const-string v0, "MobFoxBanner"

    const-string v1, "type banner throwable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 286
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v6    # "data":Lorg/json/JSONObject;
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method unlock()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setRequestedOrientation(I)V

    .line 362
    return-void
.end method

.method protected useVastView(Lcom/mobfox/sdk/video/VASTView;)V
    .locals 0
    .param p1, "vastView"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 309
    return-void
.end method

.method protected useWebView()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setContentView(Landroid/view/View;)V

    .line 313
    return-void
.end method
