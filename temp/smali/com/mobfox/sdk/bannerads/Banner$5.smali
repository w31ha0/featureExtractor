.class Lcom/mobfox/sdk/bannerads/Banner$5;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/bannerads/Banner;->getWaterfalls(Ljava/lang/String;)V
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
    .line 479
    iput-object p1, p0, Lcom/mobfox/sdk/bannerads/Banner$5;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/Object;Ljava/util/Map;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "response"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$5;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mobfox/sdk/bannerads/Banner;->waterfalls:Ljava/lang/String;

    .line 483
    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$5;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v2, p0, Lcom/mobfox/sdk/bannerads/Banner$5;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v2, v2, Lcom/mobfox/sdk/bannerads/Banner;->waterfalls:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\t"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setWaterfalls(Ljava/lang/String;)V

    .line 485
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/mobfox/sdk/bannerads/Banner$5;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v1, v1, Lcom/mobfox/sdk/bannerads/Banner;->waterfalls:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 486
    .local v0, "pub":Lorg/json/JSONObject;
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/mobfox/sdk/bannerads/Banner;->DEBUG_MODE:Z

    .line 492
    .end local v0    # "pub":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 489
    .restart local v0    # "pub":Lorg/json/JSONObject;
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mobfox/sdk/bannerads/Banner;->DEBUG_MODE:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    .end local v0    # "pub":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$5;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->mobFoxWebView:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/webview/MobFoxWebView;->setWaterfalls(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    const-string v0, "MobFoxBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on waterfalls fetch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to connect to sdk.starbolt.io"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/bannerads/Banner$5;->this$0:Lcom/mobfox/sdk/bannerads/Banner;

    iget-object v0, v0, Lcom/mobfox/sdk/bannerads/Banner;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mobfox/sdk/logging/MobFoxReport;->postException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    goto :goto_0

    .line 504
    :cond_1
    const-string v0, "MobFoxBanner"

    const-string v1, "on waterfalls fetch error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
