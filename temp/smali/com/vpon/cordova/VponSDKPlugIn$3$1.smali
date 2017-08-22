.class Lcom/vpon/cordova/VponSDKPlugIn$3$1;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn$3;->a([Ljava/lang/Object;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpon/cordova/VponSDKPlugIn$3;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn$3;)V
    .locals 0

    .prologue
    .line 3025
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$3$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3027
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$3;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    if-eqz v0, :cond_0

    .line 3028
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$3;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3029
    new-instance v1, Lvpadn/ay;

    invoke-direct {v1}, Lvpadn/ay;-><init>()V

    .line 3030
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$3;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    check-cast v0, Lvpadn/df;

    invoke-virtual {v0}, Lvpadn/df;->getNativeAdUuid()Ljava/lang/String;

    move-result-object v0

    .line 3031
    invoke-virtual {v1, v0}, Lvpadn/ay;->b(Ljava/lang/String;)V

    .line 3032
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$3;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    const-string v2, "load_banner"

    invoke-virtual {v0, v2, v1}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3037
    :cond_0
    :goto_0
    return-void

    .line 3034
    :cond_1
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$3$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$3;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$3;->f:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->webView:Lvpadn/f;

    const-string v1, "load_banner"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
