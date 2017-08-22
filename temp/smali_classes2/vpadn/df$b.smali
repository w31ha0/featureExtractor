.class Lvpadn/df$b;
.super Lvpadn/d;
.source "VponAdWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/df;


# direct methods
.method public constructor <init>(Lvpadn/df;Lvpadn/q;Lvpadn/f;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lvpadn/df$b;->a:Lvpadn/df;

    .line 247
    invoke-direct {p0, p2, p3}, Lvpadn/d;-><init>(Lvpadn/q;Lvpadn/f;)V

    .line 249
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 282
    const-string v0, "VponAdWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lvpadn/df$b;->a:Lvpadn/df;

    invoke-static {v0}, Lvpadn/df;->a(Lvpadn/df;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Lvpadn/d;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3

    .prologue
    .line 275
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 276
    return-void
.end method
