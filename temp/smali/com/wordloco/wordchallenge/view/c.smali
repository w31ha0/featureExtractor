.class Lcom/wordloco/wordchallenge/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Game;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Game;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v3, 0x4b

    const/16 v2, 0x32

    const/16 v1, 0x19

    const-wide/16 v10, 0x0

    .line 1488
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-object v0, v0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    if-eqz v0, :cond_2

    .line 1489
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-wide v4, v0, Lcom/wordloco/wordchallenge/view/Game;->l:J

    cmp-long v0, v4, v10

    if-lez v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-wide v4, v0, Lcom/wordloco/wordchallenge/view/Game;->n:J

    .line 1491
    iget-object v6, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-wide v6, v6, Lcom/wordloco/wordchallenge/view/Game;->l:J

    iget-object v8, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-wide v8, v8, Lcom/wordloco/wordchallenge/view/Game;->m:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/wordloco/wordchallenge/view/Game;->n:J

    .line 1492
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iput-wide v10, v0, Lcom/wordloco/wordchallenge/view/Game;->l:J

    .line 1493
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iput-wide v10, v0, Lcom/wordloco/wordchallenge/view/Game;->m:J

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v6}, Lcom/wordloco/wordchallenge/view/Game;->a(Lcom/wordloco/wordchallenge/view/Game;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1497
    iget-object v6, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-wide v6, v6, Lcom/wordloco/wordchallenge/view/Game;->n:J

    sub-long/2addr v4, v6

    .line 1496
    iput-wide v4, v0, Lcom/wordloco/wordchallenge/view/Game;->k:J

    .line 1498
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-wide v4, v0, Lcom/wordloco/wordchallenge/view/Game;->k:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 1499
    iget-object v4, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-object v4, v4, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v4, v0}, Lcom/wordloco/wordchallenge/c/d;->b(I)V

    .line 1501
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-object v0, v0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/d;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0xf

    iget-object v4, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-object v4, v4, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    .line 1502
    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/c/d;->h()I

    move-result v4

    if-le v0, v4, :cond_1

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1505
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->Q()I

    move-result v0

    .line 1504
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->l(I)V

    .line 1508
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-object v0, v0, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/b/d;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1526
    :goto_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 1527
    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1528
    if-ge v0, v1, :cond_3

    .line 1529
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->e()V

    .line 1542
    :goto_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-object v0, v0, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    iget-object v1, v1, Lcom/wordloco/wordchallenge/view/Game;->u:Lcom/wordloco/wordchallenge/c/d;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/d;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/d;->g(I)V

    .line 1550
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->b(Lcom/wordloco/wordchallenge/view/Game;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1552
    :cond_2
    return-void

    :pswitch_0
    move v0, v1

    .line 1512
    goto :goto_0

    :pswitch_1
    move v0, v2

    .line 1516
    goto :goto_0

    :pswitch_2
    move v0, v3

    .line 1519
    goto :goto_0

    .line 1521
    :pswitch_3
    const/16 v0, 0x64

    goto :goto_0

    .line 1531
    :cond_3
    if-ge v0, v2, :cond_4

    .line 1532
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->g()V

    goto :goto_1

    .line 1534
    :cond_4
    if-ge v0, v3, :cond_5

    .line 1535
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->f()V

    goto :goto_1

    .line 1537
    :cond_5
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/c;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->h()V

    goto :goto_1

    .line 1508
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
