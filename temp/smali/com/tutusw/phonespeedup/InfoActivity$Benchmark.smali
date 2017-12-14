.class Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;
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
    name = "Benchmark"
.end annotation


# instance fields
.field c:D

.field finalTime:D

.field private handler:Landroid/os/Handler;

.field repeat:I

.field final synthetic this$0:Lcom/tutusw/phonespeedup/InfoActivity;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/InfoActivity;I)V
    .locals 3
    .param p2, "cycles"    # I

    .prologue
    .line 242
    iput-object p1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->c:D

    .line 267
    new-instance v1, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;

    invoke-direct {v1, p0}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark$1;-><init>(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)V

    iput-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->handler:Landroid/os/Handler;

    .line 238
    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->handler:Landroid/os/Handler;

    iget-object v2, p1, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iput p2, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->repeat:I

    .line 240
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 241
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;)Lcom/tutusw/phonespeedup/InfoActivity;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->this$0:Lcom/tutusw/phonespeedup/InfoActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 247
    const-wide/32 v6, 0x10fd7131

    .line 248
    .local v6, "n":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 250
    .local v0, "currentTime":J
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    iget v8, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->repeat:I

    if-lt v5, v8, :cond_0

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    long-to-double v8, v8

    iput-wide v8, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->finalTime:D

    .line 264
    iget-object v8, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->handler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 265
    return-void

    .line 252
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v8, 0xa

    if-le v4, v8, :cond_1

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const-wide/16 v2, 0x2

    .local v2, "i":J
    :goto_2
    div-long v8, v6, v2

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
    :cond_2
    div-long/2addr v6, v2

    .line 255
    :cond_3
    rem-long v8, v6, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 258
    iget-wide v8, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->c:D

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;->c:D

    .line 254
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_2
.end method
