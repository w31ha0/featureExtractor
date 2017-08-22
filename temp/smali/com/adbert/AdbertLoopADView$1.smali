.class Lcom/adbert/AdbertLoopADView$1;
.super Lcom/adbert/a/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertLoopADView;->b()V
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
    .line 73
    iput-object p1, p0, Lcom/adbert/AdbertLoopADView$1;->a:Lcom/adbert/AdbertLoopADView;

    invoke-direct {p0}, Lcom/adbert/a/c/b;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 96
    new-instance v1, Lcom/adbert/AdbertLoopADView$1$1;

    invoke-direct {v1, p0, v0}, Lcom/adbert/AdbertLoopADView$1$1;-><init>(Lcom/adbert/AdbertLoopADView$1;Landroid/os/Handler;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/adbert/AdbertLoopADView$1;->a(I)V

    .line 92
    return-void
.end method

.method public onFailedReceive(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$1;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->a(Lcom/adbert/AdbertLoopADView;)Lcom/adbert/AdbertListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$1;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->a(Lcom/adbert/AdbertLoopADView;)Lcom/adbert/AdbertListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adbert/AdbertListener;->onFailedReceive(Ljava/lang/String;)V

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adbert/AdbertLoopADView$1;->a(I)V

    .line 87
    return-void
.end method

.method public onReceive(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$1;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->a(Lcom/adbert/AdbertLoopADView;)Lcom/adbert/AdbertListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/adbert/AdbertLoopADView$1;->a:Lcom/adbert/AdbertLoopADView;

    invoke-static {v0}, Lcom/adbert/AdbertLoopADView;->a(Lcom/adbert/AdbertLoopADView;)Lcom/adbert/AdbertListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adbert/AdbertListener;->onReceive(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
