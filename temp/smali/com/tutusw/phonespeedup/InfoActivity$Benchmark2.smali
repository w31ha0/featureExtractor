.class Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/InfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Benchmark2"
.end annotation


# instance fields
.field finalTime:D

.field private handler:Landroid/os/Handler;

.field repeat:I

.field final synthetic this$0:Lcom/tutusw/phonespeedup/InfoActivity;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/InfoActivity;I)V
    .locals 3
    .param p2, "cycles"    # I

    .prologue
    .line 297
    iput-object p1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v1, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;

    invoke-direct {v1, p0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2$1;-><init>(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)V

    iput-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->handler:Landroid/os/Handler;

    .line 293
    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->handler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 294
    iput p2, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->repeat:I

    .line 295
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 296
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;)Lcom/tutusw/phonespeedup/InfoActivity;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 303
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    iget v3, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->repeat:I

    if-lt v2, v3, :cond_0

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 309
    .local v0, "currentTime":J
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->repeat:I

    if-lt v2, v3, :cond_1

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-double v3, v3

    iput-wide v3, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->finalTime:D

    .line 314
    iget-object v3, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;->handler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    return-void

    .line 304
    .end local v0    # "currentTime":J
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 310
    .restart local v0    # "currentTime":J
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
