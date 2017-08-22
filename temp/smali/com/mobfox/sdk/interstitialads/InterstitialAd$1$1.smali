.class Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->onAdResponse(Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

.field final synthetic val$adResp:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iput-object p2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->val$adResp:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .prologue
    .line 158
    const-string v0, "MobFoxInterstitial"

    const-string v1, "interstitial clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialClicked(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V

    goto :goto_0
.end method

.method public onInterstitialClosed(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .prologue
    .line 144
    const-string v0, "MobFoxInterstitial"

    const-string v1, "interstitial closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialClosed(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V

    goto :goto_0
.end method

.method public onInterstitialFailed(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 114
    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v2}, Lcom/mobfox/sdk/bannerads/Banner;->cancelTimeout()V

    .line 115
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onAutoRedirect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->val$adResp:Lorg/json/JSONObject;

    const-string v3, "requestID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "requestID":Ljava/lang/String;
    const-string v2, "MobFoxInterstitial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mobfox/sdk/logging/MobFoxReport;->getLogJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    .local v0, "log":Lorg/json/JSONObject;
    const-string v2, "requestID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/mobfox/sdk/logging/MobFoxReport;->post(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "log":Lorg/json/JSONObject;
    .end local v1    # "requestID":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 128
    const-string v2, "MobFoxInterstitial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on interstitial failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_1
    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->iterator:Lcom/mobfox/sdk/interstitialads/EventIterator;

    invoke-virtual {v2}, Lcom/mobfox/sdk/interstitialads/EventIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->iterator:Lcom/mobfox/sdk/interstitialads/EventIterator;

    invoke-virtual {v2, p0}, Lcom/mobfox/sdk/interstitialads/EventIterator;->callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;)V

    goto :goto_0

    .line 130
    :cond_2
    const-string v2, "MobFoxInterstitial"

    const-string v3, "on interstitial failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    :cond_3
    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v3, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v3, v3, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v3, v3, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "no ads in response"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialFailed(Lcom/mobfox/sdk/interstitialads/InterstitialAd;Ljava/lang/Exception;)V

    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onInterstitialFinished()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "MobFoxInterstitial"

    const-string v1, "interstitial finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    invoke-interface {v0}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialFinished()V

    goto :goto_0
.end method

.method public onInterstitialLoaded(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .prologue
    .line 104
    const-string v0, "MobFoxInterstitial"

    const-string v1, "interstitial loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->ready:Z

    .line 106
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->cancelTimeout()V

    .line 107
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iput-object p1, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->interstitial:Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .line 108
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialLoaded(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V

    goto :goto_0
.end method

.method public onInterstitialShown(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .prologue
    .line 165
    const-string v0, "MobFoxInterstitial"

    const-string v1, "interstitial shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialShown(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V

    goto :goto_0
.end method
