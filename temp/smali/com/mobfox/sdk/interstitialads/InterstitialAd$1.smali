.class Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialAd;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdResponse(Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "adResp"    # Lorg/json/JSONObject;

    .prologue
    .line 75
    const-string v1, "MobFoxInterstitial"

    const-string v2, "on ad resp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v1}, Lcom/mobfox/sdk/bannerads/Banner;->isTimeout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v1}, Lcom/mobfox/sdk/bannerads/Banner;->getDemo_age()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "demo_age"

    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v2}, Lcom/mobfox/sdk/bannerads/Banner;->getDemo_age()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v1}, Lcom/mobfox/sdk/bannerads/Banner;->getDemo_gender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "demo_gender"

    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v2}, Lcom/mobfox/sdk/bannerads/Banner;->getDemo_gender()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v1}, Lcom/mobfox/sdk/bannerads/Banner;->getDemo_keywords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "demo_keywords"

    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v2}, Lcom/mobfox/sdk/bannerads/Banner;->getDemo_keywords()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    new-instance v2, Lcom/mobfox/sdk/interstitialads/EventIterator;

    iget-object v3, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v3, v3, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/mobfox/sdk/interstitialads/EventIterator;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;Ljava/util/Map;)V

    iput-object v2, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->iterator:Lcom/mobfox/sdk/interstitialads/EventIterator;

    .line 99
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->iterator:Lcom/mobfox/sdk/interstitialads/EventIterator;

    invoke-virtual {v1}, Lcom/mobfox/sdk/interstitialads/EventIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->iterator:Lcom/mobfox/sdk/interstitialads/EventIterator;

    new-instance v2, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;

    invoke-direct {v2, p0, p2}, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1$1;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/interstitialads/EventIterator;->callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;)V

    goto :goto_0
.end method

.method public onError(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 63
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "MobFoxInterstitial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->cancelTimeout()V

    .line 69
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_1

    .line 71
    :goto_1
    return-void

    .line 66
    :cond_0
    const-string v0, "MobFoxInterstitial"

    const-string v1, "interstitial ad on error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-interface {v0, v1, p2}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialFailed(Lcom/mobfox/sdk/interstitialads/InterstitialAd;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onNoAd(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 4
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 176
    const-string v0, "MobFoxInterstitial"

    const-string v1, "no fill"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->banner:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->cancelTimeout()V

    .line 178
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->listener:Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->self:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "no fill"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;->onInterstitialFailed(Lcom/mobfox/sdk/interstitialads/InterstitialAd;Ljava/lang/Exception;)V

    goto :goto_0
.end method
