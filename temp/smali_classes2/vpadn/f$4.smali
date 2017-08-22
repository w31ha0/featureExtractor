.class Lvpadn/f$4;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/f;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/f;

.field final synthetic b:Lvpadn/f;


# direct methods
.method constructor <init>(Lvpadn/f;Lvpadn/f;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lvpadn/f$4;->b:Lvpadn/f;

    iput-object p2, p0, Lvpadn/f$4;->a:Lvpadn/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 578
    const-string v0, "CordovaWebView"

    const-string v1, "CordovaWebView: TIMEOUT ERROR!--loadDataWithBaseURL"

    invoke-static {v0, v1}, Lvpadn/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lvpadn/f$4;->a:Lvpadn/f;

    if-eqz v0, :cond_0

    .line 581
    :try_start_0
    iget-object v0, p0, Lvpadn/f$4;->a:Lvpadn/f;

    invoke-virtual {v0}, Lvpadn/f;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_0
    :goto_0
    iget-object v0, p0, Lvpadn/f$4;->b:Lvpadn/f;

    iget-object v0, v0, Lvpadn/f;->b:Lvpadn/g;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lvpadn/f$4;->b:Lvpadn/f;

    iget-object v0, v0, Lvpadn/f;->b:Lvpadn/g;

    iget-object v1, p0, Lvpadn/f$4;->a:Lvpadn/f;

    const/4 v2, -0x6

    const-string v3, "The connection to the server was unsuccessful."

    iget-object v4, p0, Lvpadn/f$4;->b:Lvpadn/f;

    invoke-static {v4}, Lvpadn/f;->b(Lvpadn/f;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lvpadn/g;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_1
    return-void

    .line 582
    :catch_0
    move-exception v0

    goto :goto_0
.end method
