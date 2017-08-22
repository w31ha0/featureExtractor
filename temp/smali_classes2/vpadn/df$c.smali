.class Lvpadn/df$c;
.super Lvpadn/g;
.source "VponAdWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic c:Lvpadn/df;


# direct methods
.method public constructor <init>(Lvpadn/df;Lvpadn/q;Lvpadn/f;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lvpadn/df$c;->c:Lvpadn/df;

    .line 295
    invoke-direct {p0, p2, p3}, Lvpadn/g;-><init>(Lvpadn/q;Lvpadn/f;)V

    .line 296
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Lvpadn/g;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 308
    const-string v0, "UNKNOWN"

    .line 309
    instance-of v1, p1, Lvpadn/df;

    if-eqz v1, :cond_0

    .line 310
    check-cast p1, Lvpadn/df;

    .line 311
    invoke-virtual {p1}, Lvpadn/df;->getVponWebViewId()Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_0
    const-string v1, "VponAdWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished vponWebViewId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lvpadn/df$c;->c:Lvpadn/df;

    invoke-static {v1}, Lvpadn/df;->c(Lvpadn/df;)Lvpadn/at;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lvpadn/df$c;->c:Lvpadn/df;

    invoke-static {v1}, Lvpadn/df;->c(Lvpadn/df;)Lvpadn/at;

    move-result-object v1

    invoke-interface {v1, v0}, Lvpadn/at;->onWebViewLoadPageFinish(Ljava/lang/String;)V

    .line 318
    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 300
    const-string v0, "VponAdWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VponAdWebView onReceivedError errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " des:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failingUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lvpadn/df$c;->c:Lvpadn/df;

    invoke-static {v0}, Lvpadn/df;->c(Lvpadn/df;)Lvpadn/at;

    move-result-object v0

    iget-object v1, p0, Lvpadn/df$c;->c:Lvpadn/df;

    invoke-static {v1}, Lvpadn/df;->b(Lvpadn/df;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lvpadn/at;->onWebViewReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method
