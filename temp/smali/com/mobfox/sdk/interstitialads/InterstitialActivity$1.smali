.class Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;
.super Ljava/lang/Object;
.source "InterstitialActivity.java"

# interfaces
.implements Lcom/mobfox/sdk/webview/MobFoxWebViewRenderAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->setupWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "clickURL"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string v3, "MobFoxInterstitial"

    const-string v4, "on ad clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-nez p2, :cond_0

    .line 178
    const-string v3, "MobFoxInterstitial"

    const-string v4, "click Url null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 182
    const-string v3, "MobFoxInterstitial"

    const-string v4, "click Url empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "launchBrowser":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 190
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    iget-object v3, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    invoke-virtual {v3, v2}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .end local v2    # "launchBrowser":Landroid/content/Intent;
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 201
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "data"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 205
    :goto_2
    iget-object v3, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    const-string v4, "onAdClick"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->onError(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V

    goto :goto_1

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->onError(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V

    goto :goto_1

    .line 202
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method public onAdClosed(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 2
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 217
    const-string v0, "MobFoxInterstitial"

    const-string v1, "interstitial activity >> onAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    invoke-virtual {v0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->finish()V

    .line 220
    return-void
.end method

.method public onAutoRedirect(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    const-string v1, "onAutoRedirect"

    invoke-virtual {v0, v1, p2}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    invoke-virtual {v0}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->finish()V

    .line 226
    return-void
.end method

.method public onError(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 161
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "MobFoxInterstitial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on webView error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "data"

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    const-string v2, "onError"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onRendered(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    const-string v1, "onRendered"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    const-string v1, "onError"

    invoke-virtual {v0, v1, p2}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoAdFinished(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 3
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialActivity$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialActivity;

    const-string v1, "onVideoAdFinished"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/sdk/interstitialads/InterstitialActivity;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method
