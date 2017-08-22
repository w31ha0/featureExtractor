.class Lvpadn/f$1;
.super Ljava/lang/Object;
.source "CordovaWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lvpadn/f;


# direct methods
.method constructor <init>(Lvpadn/f;Lvpadn/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lvpadn/f$1;->c:Lvpadn/f;

    iput-object p2, p0, Lvpadn/f$1;->a:Lvpadn/f;

    iput-object p3, p0, Lvpadn/f$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 514
    const-string v0, "CordovaWebView"

    const-string v1, "CordovaWebView: TIMEOUT ERROR!"

    invoke-static {v0, v1}, Lvpadn/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lvpadn/f$1;->a:Lvpadn/f;

    invoke-virtual {v0}, Lvpadn/f;->stopLoading()V

    .line 516
    iget-object v0, p0, Lvpadn/f$1;->c:Lvpadn/f;

    iget-object v0, v0, Lvpadn/f;->b:Lvpadn/g;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lvpadn/f$1;->c:Lvpadn/f;

    iget-object v0, v0, Lvpadn/f;->b:Lvpadn/g;

    iget-object v1, p0, Lvpadn/f$1;->a:Lvpadn/f;

    const/4 v2, -0x6

    const-string v3, "The connection to the server was unsuccessful."

    iget-object v4, p0, Lvpadn/f$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lvpadn/g;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method
