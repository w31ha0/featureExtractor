.class Lcom/facebook/internal/LikeActionController$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$13()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v2, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    const-string v2, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    const/4 v0, 0x0

    .line 288
    :goto_1
    invoke-static {v1}, Lcom/facebook/internal/LikeActionController;->access$14(Z)V

    .line 292
    invoke-static {}, Lcom/facebook/internal/LikeActionController;->access$15()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/facebook/internal/LikeActionController$4$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/facebook/internal/LikeActionController$4$1;-><init>(Lcom/facebook/internal/LikeActionController$4;ZLandroid/content/Context;)V

    .line 317
    const-wide/16 v3, 0x64

    .line 292
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 283
    goto :goto_1
.end method
