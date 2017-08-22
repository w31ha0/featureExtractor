.class Lvpadn/g$1;
.super Ljava/lang/Object;
.source "CordovaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/g;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/g;


# direct methods
.method constructor <init>(Lvpadn/g;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lvpadn/g$1;->a:Lvpadn/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 330
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 331
    iget-object v0, p0, Lvpadn/g$1;->a:Lvpadn/g;

    iget-object v0, v0, Lvpadn/g;->a:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lvpadn/g$1$1;

    invoke-direct {v1, p0}, Lvpadn/g$1$1;-><init>(Lvpadn/g$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method
