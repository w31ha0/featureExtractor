.class Lvpadn/f$2;
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
.field final synthetic a:I

.field final synthetic b:Lvpadn/f;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lvpadn/f;


# direct methods
.method constructor <init>(Lvpadn/f;ILvpadn/f;ILjava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lvpadn/f$2;->e:Lvpadn/f;

    iput p2, p0, Lvpadn/f$2;->a:I

    iput-object p3, p0, Lvpadn/f$2;->b:Lvpadn/f;

    iput p4, p0, Lvpadn/f$2;->c:I

    iput-object p5, p0, Lvpadn/f$2;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 526
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :try_start_1
    iget v0, p0, Lvpadn/f$2;->a:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 528
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    :goto_0
    iget-object v0, p0, Lvpadn/f$2;->b:Lvpadn/f;

    iget v0, v0, Lvpadn/f;->e:I

    iget v1, p0, Lvpadn/f$2;->c:I

    if-ne v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lvpadn/f$2;->b:Lvpadn/f;

    invoke-static {v0}, Lvpadn/f;->a(Lvpadn/f;)Lvpadn/q;

    move-result-object v0

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lvpadn/f$2;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 537
    :cond_0
    return-void

    .line 528
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
