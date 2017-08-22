.class Lvpadn/n$d;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"

# interfaces
.implements Lvpadn/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Z

.field final b:Ljava/lang/Runnable;

.field final synthetic c:Lvpadn/n;


# direct methods
.method constructor <init>(Lvpadn/n;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 324
    iput-object p1, p0, Lvpadn/n$d;->c:Lvpadn/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-boolean v0, p0, Lvpadn/n$d;->a:Z

    .line 305
    new-instance v0, Lvpadn/n$d$1;

    invoke-direct {v0, p0}, Lvpadn/n$d$1;-><init>(Lvpadn/n$d;)V

    iput-object v0, p0, Lvpadn/n$d;->b:Ljava/lang/Runnable;

    .line 326
    :try_start_0
    invoke-static {p1}, Lvpadn/n;->b(Lvpadn/n;)Lvpadn/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/f;->setNetworkAvailable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 329
    const-string v1, "JsMessageQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnlineEventsBridgeMode class throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lvpadn/n$d;->c:Lvpadn/n;

    invoke-static {v0}, Lvpadn/n;->c(Lvpadn/n;)Lvpadn/q;

    move-result-object v0

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lvpadn/n$d;->c:Lvpadn/n;

    invoke-static {v0}, Lvpadn/n;->c(Lvpadn/n;)Lvpadn/q;

    move-result-object v0

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lvpadn/n$d;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    const-string v0, "JsMessageQueue"

    const-string v1, "cordova.getActivity() = null when executing onNativeToJsMessageAvailable() method in OnlineEventsBridgeMode inner class."

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lvpadn/n$d;->c:Lvpadn/n;

    invoke-static {v1}, Lvpadn/n;->c(Lvpadn/n;)Lvpadn/q;

    move-result-object v1

    invoke-interface {v1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lvpadn/n$d;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
