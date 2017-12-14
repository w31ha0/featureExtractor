.class Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;
.super Ljava/lang/Object;
.source "StresstestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/StresstestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Benchmark"
.end annotation


# instance fields
.field fail:Z

.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

.field threadId:I


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/StresstestActivity;I)V
    .locals 3
    .param p2, "t"    # I

    .prologue
    const/4 v2, 0x0

    .line 113
    iput-object p1, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v1, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;

    invoke-direct {v1, p0}, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark$1;-><init>(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)V

    iput-object v1, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->handler:Landroid/os/Handler;

    .line 107
    iput p2, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->threadId:I

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/tutusw/phonespeedup/StresstestActivity;->run:Z

    .line 109
    iput-boolean v2, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->fail:Z

    .line 110
    iput-boolean v2, p1, Lcom/tutusw/phonespeedup/StresstestActivity;->trigger:Z

    .line 111
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;)Lcom/tutusw/phonespeedup/StresstestActivity;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 121
    .local v0, "sqrt":D
    :cond_0
    iget-object v2, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    iget-boolean v2, v2, Lcom/tutusw/phonespeedup/StresstestActivity;->run:Z

    if-nez v2, :cond_1

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    return-void

    .line 122
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    cmpl-double v2, v2, v0

    if-eqz v2, :cond_0

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->fail:Z

    .line 124
    iget-object v2, p0, Lcom/tutusw/phonespeedup/StresstestActivity$Benchmark;->this$0:Lcom/tutusw/phonespeedup/StresstestActivity;

    iput-boolean v6, v2, Lcom/tutusw/phonespeedup/StresstestActivity;->run:Z

    goto :goto_0
.end method
