.class Lcom/mobfox/sdk/bannerads/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/Banner;->setUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/bannerads/Banner;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/Banner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/bannerads/Banner;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdResponse(Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "adResp"    # Lorg/json/JSONObject;

    .prologue
    .line 230
    const-string v1, "MobFoxBanner"

    const-string v2, "ad response"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v1, "ad response"

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-wide v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    invoke-static {v1, v2, v3}, Lcom/mobfox/sdk/bannerads/Banner;->logTime(Ljava/lang/String;J)V

    .line 233
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v1}, Lcom/mobfox/sdk/runnables/Timeout;->isTimeout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "width"

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->adspace_width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "height"

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->adspace_height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    if-lez v1, :cond_2

    const-string v1, "demo_age"

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->demo_age:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "demo_gender"

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->demo_gender:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_3
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "demo_keywords"

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->demo_keywords:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    new-instance v2, Lcom/mobfox/sdk/bannerads/EventIterator;

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v3, v3, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/mobfox/sdk/bannerads/EventIterator;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;Ljava/util/Map;)V

    iput-object v2, v1, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    .line 245
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    invoke-virtual {v1}, Lcom/mobfox/sdk/bannerads/EventIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    new-instance v2, Lcom/mobfox/sdk/bannerads/Banner$1$1;

    invoke-direct {v2, p0, p2}, Lcom/mobfox/sdk/bannerads/Banner$1$1;-><init>(Lcom/mobfox/sdk/bannerads/Banner$1;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/bannerads/EventIterator;->callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventBannerListener;)V

    goto :goto_0
.end method

.method public onError(Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 212
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "MobFoxBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weblistener error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    sget-object v0, Lcom/mobfox/sdk/bannerads/Banner;->LOAD_START:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-wide v2, v1, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    invoke-static {v0, v2, v3}, Lcom/mobfox/sdk/bannerads/Banner;->logTime(Ljava/lang/String;J)V

    .line 218
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v0}, Lcom/mobfox/sdk/runnables/Timeout;->cancel()V

    .line 220
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/mobfox/sdk/logging/MobFoxReport;->postException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 222
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-nez v0, :cond_1

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-interface {v0, v1, p2}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onNoAd(Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 4
    .param p1, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 328
    const-string v0, "MobFoxBanner"

    const-string v1, "on no ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v0, Lcom/mobfox/sdk/bannerads/Banner;->LOAD_START:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-wide v2, v1, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    invoke-static {v0, v2, v3}, Lcom/mobfox/sdk/bannerads/Banner;->logTime(Ljava/lang/String;J)V

    .line 333
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v0}, Lcom/mobfox/sdk/runnables/Timeout;->cancel()V

    .line 334
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/bannerads/BannerListener;->onNoFill(Landroid/view/View;)V

    goto :goto_0
.end method
