.class Lcom/adbert/AdbertLoopADView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertLoopADView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertLoopADView;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertLoopADView;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 196
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    iget-object v1, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v1}, Lcom/adbert/AdbertLoopADView;->e(Lcom/adbert/AdbertLoopADView;)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Lcom/adbert/AdbertLoopADView;->a(Lcom/adbert/AdbertLoopADView;I)I

    .line 197
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->b(Lcom/adbert/AdbertLoopADView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->d(Lcom/adbert/AdbertLoopADView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->e(Lcom/adbert/AdbertLoopADView;)I

    move-result v0

    const/16 v1, 0x7530

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    iget-boolean v0, v0, Lcom/adbert/AdbertLoopADView;->b:Z

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adbert/AdbertLoopADView;->a(Lcom/adbert/AdbertLoopADView;I)I

    .line 201
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->c(Lcom/adbert/AdbertLoopADView;)V

    .line 202
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->d(Lcom/adbert/AdbertLoopADView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$2;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->d(Lcom/adbert/AdbertLoopADView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
