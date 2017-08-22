.class Lcom/vpon/cordova/VponSDKPlugIn$3;
.super Landroid/os/AsyncTask;
.source "VponSDKPlugIn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->a(Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lorg/json/JSONObject;

.field b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lvpadn/p;

.field final synthetic e:Lvpadn/ag;

.field final synthetic f:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)V
    .locals 1

    .prologue
    .line 2995
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->d:Lvpadn/p;

    iput-object p4, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->e:Lvpadn/ag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2996
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->a:Lorg/json/JSONObject;

    .line 2997
    const/4 v0, -0x1

    iput v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->b:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3002
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vpon/cordova/VponSDKPlugIn;->b(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    .line 3003
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 3004
    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 3006
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lvpadn/bf;->b(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    .line 3008
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->b:I

    .line 3009
    const-string v0, "VponSDKPlugIn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP-STATUS-CODE:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    iget v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->b:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->b:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->b:I

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->b:I

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->a:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->d:Lvpadn/p;

    invoke-static/range {v0 .. v6}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;ILorg/apache/http/HttpResponse;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/json/JSONObject;Lvpadn/p;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 3014
    if-nez v2, :cond_0

    .line 3015
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3062
    :goto_0
    return-object v0

    .line 3018
    :cond_0
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lvpadn/ba;->a(Lorg/apache/http/HttpResponse;Z)V

    .line 3020
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->e:Lvpadn/ag;

    invoke-static {v0, v2, v1}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Lorg/apache/http/HttpResponse;Lvpadn/ag;)V

    .line 3022
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->a:Lorg/json/JSONObject;

    const-string v1, "status"

    iget v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3023
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->d:Lvpadn/p;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lvpadn/p;->a(Lorg/json/JSONObject;)V

    .line 3025
    new-instance v0, Lcom/vpon/cordova/VponSDKPlugIn$3$1;

    invoke-direct {v0, p0}, Lcom/vpon/cordova/VponSDKPlugIn$3$1;-><init>(Lcom/vpon/cordova/VponSDKPlugIn$3;)V

    .line 3040
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3042
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3049
    :goto_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3044
    :cond_1
    const-string v1, "VponSDKPlugIn"

    const-string v2, "cordova.getActivity() = null when executing webView.postMessage(\"load_banner\") in doAdReq(...) method."

    invoke-static {v1, v2}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v2, v2, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    invoke-interface {v2}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3051
    :catch_0
    move-exception v0

    .line 3053
    :try_start_1
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAdReq throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3054
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->a:Lorg/json/JSONObject;

    const-string v2, "e"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAdReq throw Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3055
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->d:Lvpadn/p;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lvpadn/p;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3062
    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 3056
    :catch_1
    move-exception v0

    .line 3057
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2995
    invoke-virtual {p0, p1}, Lcom/vpon/cordova/VponSDKPlugIn$3;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
