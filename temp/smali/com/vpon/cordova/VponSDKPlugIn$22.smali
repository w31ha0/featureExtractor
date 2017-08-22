.class Lcom/vpon/cordova/VponSDKPlugIn$22;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->doOpenWebAppStep2(Ljava/lang/String;Ljava/lang/String;Lvpadn/p;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lvpadn/p;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:I

.field final synthetic i:Z

.field final synthetic j:Z

.field final synthetic k:Z

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->m:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->b:Lvpadn/p;

    iput-object p4, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->e:Z

    iput-boolean p7, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->f:Z

    iput-object p8, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->g:Ljava/lang/String;

    iput p9, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->h:I

    iput-boolean p10, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->i:Z

    iput-boolean p11, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->j:Z

    iput-boolean p12, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->k:Z

    iput-object p13, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->a:Ljava/lang/String;

    const-string v1, "bannerWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1812
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->m:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/af;

    if-eqz v0, :cond_1

    .line 1813
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->m:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/af;

    .line 1823
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->b:Lvpadn/p;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->e:Z

    iget-boolean v5, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->f:Z

    iget-object v6, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->g:Ljava/lang/String;

    iget v7, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->h:I

    iget-boolean v8, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->i:Z

    iget-boolean v9, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->j:Z

    iget-boolean v10, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->k:Z

    invoke-virtual/range {v0 .. v10}, Lvpadn/af;->a(Lvpadn/p;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V

    .line 1852
    :cond_0
    :goto_0
    return-void

    .line 1815
    :cond_1
    const-string v0, "VponSDKPlugIn"

    const-string v1, "cannot cast to VponBannerController"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->m:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->b:Lvpadn/p;

    const-string v2, "cannot cast to VponBannerController"

    invoke-static {v0, v1, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1826
    :cond_2
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->a:Ljava/lang/String;

    const-string v1, "nativeAdClickJSWebView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1828
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->m:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    instance-of v0, v0, Lvpadn/ai;

    if-eqz v0, :cond_3

    .line 1829
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->m:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ai;

    .line 1839
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->b:Lvpadn/p;

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->e:Z

    iget-boolean v6, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->f:Z

    iget-object v7, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->g:Ljava/lang/String;

    iget v8, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->h:I

    iget-boolean v9, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->i:Z

    iget-boolean v10, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->j:Z

    iget-boolean v11, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->k:Z

    invoke-virtual/range {v0 .. v11}, Lvpadn/ai;->a(Ljava/lang/String;Lvpadn/p;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZZZ)V

    goto :goto_0

    .line 1831
    :cond_3
    const-string v0, "VponSDKPlugIn"

    const-string v1, "cannot cast to VponBannerController"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    :try_start_1
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->m:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->b:Lvpadn/p;

    const-string v2, "cannot cast to VponBannerController"

    invoke-static {v0, v1, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1834
    :catch_1
    move-exception v0

    .line 1835
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1841
    :cond_4
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->a:Ljava/lang/String;

    const-string v1, "InterstitialAdWebView(new Activity)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    :try_start_2
    const-string v0, "VponSDKPlugIn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at doOpenWebAppStep2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->m:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->b:Lvpadn/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$22;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at doOpenWebAppStep2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1847
    :catch_2
    move-exception v0

    .line 1848
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
