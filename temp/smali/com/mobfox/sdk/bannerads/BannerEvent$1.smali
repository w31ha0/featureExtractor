.class Lcom/mobfox/sdk/bannerads/BannerEvent$1;
.super Ljava/lang/Object;
.source "BannerEvent.java"

# interfaces
.implements Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/BannerEvent;->loadAd(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/bannerads/BannerEvent;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/BannerEvent;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/bannerads/BannerEvent;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->this$0:Lcom/mobfox/sdk/bannerads/BannerEvent;

    iput-object p2, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    iput-object p3, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "clickURL"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "launchBrowser":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-interface {v2, p1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerClicked(Landroid/view/View;)V

    .line 72
    .end local v1    # "launchBrowser":Landroid/content/Intent;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MobFoxBanner"

    const-string v3, "launch browser exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-interface {v2, p1, v0}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "MobFoxBanner"

    const-string v3, "launch browser exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p1, v3}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onAdClosed(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 1
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerClosed(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public onAutoRedirect(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "onAutoRedirect"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    .line 87
    return-void
.end method

.method public onError(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-interface {v0, p1, p2}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    .line 52
    return-void
.end method

.method public onRendered(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "rendered!"

    iget-wide v2, p1, Lcom/mobfox/sdk/webview/MobFoxWebView;->loadBannerStarted:J

    invoke-static {v0, v2, v3}, Lcom/mobfox/sdk/bannerads/Banner;->logTime(Ljava/lang/String;J)V

    .line 93
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->this$0:Lcom/mobfox/sdk/bannerads/BannerEvent;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/BannerEvent;->banner:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVideoAdFinished(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 1
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/BannerEvent$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerFinished()V

    .line 77
    return-void
.end method
