.class final Lcom/creativemobi/engine/ag;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/creativemobi/engine/ag;->a:I

    iput-boolean p2, p0, Lcom/creativemobi/engine/ag;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 129
    :goto_0
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->l()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 130
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/creativemobi/engine/ag;->a:I

    iget-boolean v1, p0, Lcom/creativemobi/engine/ag;->b:Z

    invoke-static {v0, v1}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    .line 132
    :cond_1
    return-void
.end method
