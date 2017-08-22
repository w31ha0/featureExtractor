.class Lvpadn/cs$h;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 1204
    iput-object p1, p0, Lvpadn/cs$h;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1208
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$h;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lvpadn/cs$h;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->f(Lvpadn/cs;)Lcom/vpadn/widget/VpadnActivity;

    move-result-object v0

    new-instance v1, Lvpadn/cs$g;

    iget-object v2, p0, Lvpadn/cs$h;->a:Lvpadn/cs;

    invoke-direct {v1, v2}, Lvpadn/cs$g;-><init>(Lvpadn/cs;)V

    invoke-virtual {v0, v1}, Lcom/vpadn/widget/VpadnActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    const-string v1, "VideoManager"

    const-string v2, "PutBufferingCloseButtonTimerTask throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
