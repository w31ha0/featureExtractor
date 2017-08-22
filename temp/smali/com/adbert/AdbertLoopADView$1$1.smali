.class Lcom/adbert/AdbertLoopADView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertLoopADView$1;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/adbert/AdbertLoopADView$1;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertLoopADView$1;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView$1$1;->b:Lcom/adbert/AdbertLoopADView$1;

    iput-object p2, p0, Lcom/adbert/AdbertLoopADView$1$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$1$1;->b:Lcom/adbert/AdbertLoopADView$1;

    iget-object v0, v0, Lcom/adbert/AdbertLoopADView$1;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->b(Lcom/adbert/AdbertLoopADView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$1$1;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$1$1;->b:Lcom/adbert/AdbertLoopADView$1;

    iget-object v0, v0, Lcom/adbert/AdbertLoopADView$1;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->c(Lcom/adbert/AdbertLoopADView;)V

    goto :goto_0
.end method
