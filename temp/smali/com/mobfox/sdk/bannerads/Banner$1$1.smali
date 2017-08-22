.class Lcom/mobfox/sdk/bannerads/Banner$1$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/Banner$1;->onAdResponse(Lcom/mobfox/sdk/webview/MobFoxWebView;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

.field final synthetic val$adResp:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/bannerads/Banner$1;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/bannerads/Banner$1;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iput-object p2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->val$adResp:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 318
    const-string v0, "MobFoxBanner"

    const-string v1, "banner clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerClicked(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onBannerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 303
    const-string v0, "MobFoxBanner"

    const-string v1, "banner closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0}, Lcom/mobfox/sdk/bannerads/Banner;->removeAllViews()V

    .line 305
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerClosed(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onBannerError(Landroid/view/View;Ljava/lang/Exception;)V
    .locals 7
    .param p1, "banner"    # Landroid/view/View;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x0

    .line 249
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v2}, Lcom/mobfox/sdk/runnables/Timeout;->isTimeout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v2}, Lcom/mobfox/sdk/runnables/Timeout;->cancel()V

    .line 253
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onAutoRedirect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->val$adResp:Lorg/json/JSONObject;

    const-string v3, "requestID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "requestID":Ljava/lang/String;
    const-string v2, "MobFoxBanner"

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

    .line 258
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/mobfox/sdk/logging/MobFoxReport;->getLogJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 259
    .local v0, "log":Lorg/json/JSONObject;
    const-string v2, "requestID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/mobfox/sdk/logging/MobFoxReport;->post(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v0    # "log":Lorg/json/JSONObject;
    .end local v1    # "requestID":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 267
    :cond_2
    sget-object v2, Lcom/mobfox/sdk/bannerads/Banner;->LOAD_START:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v3, v3, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-wide v4, v3, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    invoke-static {v2, v4, v5}, Lcom/mobfox/sdk/bannerads/Banner;->logTime(Ljava/lang/String;J)V

    .line 270
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onNoAd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    iget-object v3, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v3, v3, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v3, v3, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-interface {v2, v3}, Lcom/mobfox/sdk/bannerads/BannerListener;->onNoFill(Landroid/view/View;)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    invoke-static {v2, p2, v6}, Lcom/mobfox/sdk/logging/MobFoxReport;->postException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 278
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    invoke-virtual {v2}, Lcom/mobfox/sdk/bannerads/EventIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 279
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->iterator:Lcom/mobfox/sdk/bannerads/EventIterator;

    invoke-virtual {v2, p0}, Lcom/mobfox/sdk/bannerads/EventIterator;->callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventBannerListener;)V

    goto/16 :goto_0

    .line 283
    :cond_4
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    invoke-interface {v2, p1, p2}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public onBannerFinished()V
    .locals 2

    .prologue
    .line 311
    const-string v0, "MobFoxBanner"

    const-string v1, "banner finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    invoke-interface {v0}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerFinished()V

    goto :goto_0
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 4
    .param p1, "banner"    # Landroid/view/View;

    .prologue
    .line 290
    const-string v0, "ad rendered"

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-wide v2, v1, Lcom/mobfox/sdk/bannerads/Banner;->loadStart:J

    invoke-static {v0, v2, v3}, Lcom/mobfox/sdk/bannerads/Banner;->logTime(Ljava/lang/String;J)V

    .line 291
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v0}, Lcom/mobfox/sdk/runnables/Timeout;->isTimeout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v0, "MobFoxBanner"

    const-string v1, "banner loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->timeout:Lcom/mobfox/sdk/runnables/Timeout;

    invoke-virtual {v0}, Lcom/mobfox/sdk/runnables/Timeout;->cancel()V

    .line 296
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {v0, p1}, Lcom/mobfox/sdk/bannerads/Banner;->show(Landroid/view/View;)V

    .line 297
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->listener:Lcom/mobfox/sdk/bannerads/BannerListener;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$1$1;->this$1:Lcom/mobfox/sdk/bannerads/Banner$1;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner$1;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->self:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/bannerads/BannerListener;->onBannerLoaded(Landroid/view/View;)V

    goto :goto_0
.end method
