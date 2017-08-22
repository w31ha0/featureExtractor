.class Lcom/vpon/cordova/VponSDKPlugIn$2;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->a(ILorg/apache/http/HttpResponse;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/json/JSONObject;Lvpadn/p;)Lorg/apache/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;)V
    .locals 0

    .prologue
    .line 2658
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$2;->a:Lcom/vpon/cordova/VponSDKPlugIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$2;->a:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    if-eqz v0, :cond_0

    .line 2661
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$2;->a:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2662
    new-instance v1, Lvpadn/ay;

    invoke-direct {v1}, Lvpadn/ay;-><init>()V

    .line 2663
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$2;->a:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 2664
    invoke-virtual {v1, v0}, Lvpadn/ay;->b(Ljava/lang/String;)V

    .line 2665
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$2;->a:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    const-string v2, "load_banner_fail"

    invoke-virtual {v0, v2, v1}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2670
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$2;->a:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    const-string v1, "load_banner_fail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
