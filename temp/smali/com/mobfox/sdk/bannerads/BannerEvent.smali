.class public Lcom/mobfox/sdk/bannerads/BannerEvent;
.super Ljava/lang/Object;
.source "BannerEvent.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventBanner;


# instance fields
.field banner:Landroid/view/View;

.field respObj:Lorg/json/JSONObject;

.field videoView:Lcom/mobfox/sdk/video/VASTView;

.field webView:Lcom/mobfox/sdk/webview/MobFoxWebView;


# direct methods
.method public constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "webView"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "respObj"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 41
    iput-object p2, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->respObj:Lorg/json/JSONObject;

    .line 42
    return-void
.end method


# virtual methods
.method public loadAd(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mobfox/sdk/customevents/CustomEventBannerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "networkID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mobfox/sdk/customevents/CustomEventBannerListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 48
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    new-instance v1, Lcom/mobfox/sdk/bannerads/BannerEvent$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/mobfox/sdk/bannerads/BannerEvent$1;-><init>(Lcom/mobfox/sdk/bannerads/BannerEvent;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setRenderAdListener(Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;)V

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->respObj:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/mobfox/sdk/video/VASTView;

    invoke-direct {v0, p1}, Lcom/mobfox/sdk/video/VASTView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->videoView:Lcom/mobfox/sdk/video/VASTView;

    .line 104
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v7, "videoParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->videoView:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0, v7}, Lcom/mobfox/sdk/video/VASTView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->videoView:Lcom/mobfox/sdk/video/VASTView;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->respObj:Lorg/json/JSONObject;

    const-string v3, "options"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->respObj:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/mobfox/sdk/utils/Utils;->getClickVideoResp(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mobfox/sdk/video/VASTView;->init(Landroid/content/Context;Landroid/webkit/WebView;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/webview/MobFoxWebView;->getVideoBridge()Lcom/mobfox/sdk/video/VideoBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->videoView:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VideoBridge;->setVASTView(Lcom/mobfox/sdk/video/VASTView;)V

    .line 110
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->videoView:Lcom/mobfox/sdk/video/VASTView;

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->banner:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->respObj:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAd(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v7    # "videoParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v6

    .line 116
    .local v6, "e":Lorg/json/JSONException;
    const-string v0, "MobFoxBanner"

    const-string v1, "not video event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->respObj:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->banner:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->webView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/BannerEvent;->respObj:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->renderAd(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 127
    :catch_1
    move-exception v6

    .line 128
    .restart local v6    # "e":Lorg/json/JSONException;
    const-string v0, "MobFoxBanner"

    const-string v1, "not banner event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "banner event render error"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v8, v0}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto :goto_0
.end method
