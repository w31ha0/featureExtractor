.class Lcom/adbert/AdbertADView$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertADView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertADView;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 494
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->e(Lcom/adbert/AdbertADView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 559
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->f(Lcom/adbert/AdbertADView;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->c:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->b:Lcom/adbert/a/b/a;

    .line 497
    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 498
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;I)I

    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->a:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 500
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->q:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;I)I

    .line 502
    :cond_2
    const/4 v0, -0x1

    iput v0, p1, Landroid/os/Message;->what:I

    .line 503
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->b:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    .line 505
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->c:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 506
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->g(Lcom/adbert/AdbertADView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    sget-object v0, Lcom/adbert/a/b/g;->a:Lcom/adbert/a/b/g;

    invoke-virtual {v0}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adbert/a/i;->d(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->h(Lcom/adbert/AdbertADView;)V

    goto :goto_0

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->d:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-virtual {v0, v6}, Lcom/adbert/AdbertADView;->setVisibility(I)V

    goto/16 :goto_0

    .line 513
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->b:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 514
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/d;->e:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 515
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->f:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    if-eq v0, v4, :cond_6

    .line 517
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->g:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :cond_6
    if-ne v0, v4, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 519
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->h:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_7
    if-ne v0, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0, v3}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/AdbertADView;Z)Z

    .line 522
    sput-boolean v3, Lcom/adbert/a/i;->c:Z

    .line 523
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->d(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 525
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->a:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 526
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->b:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->i(Lcom/adbert/AdbertADView;)Lcom/adbert/b/d;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 528
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->i(Lcom/adbert/AdbertADView;)Lcom/adbert/b/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/adbert/b/d;->setVisibility(I)V

    .line 529
    :cond_9
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->q:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->d(Lcom/adbert/AdbertADView;I)V

    goto/16 :goto_0

    .line 530
    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->d:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 531
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->b:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->j(Lcom/adbert/AdbertADView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->j(Lcom/adbert/AdbertADView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->k(Lcom/adbert/AdbertADView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->l(Lcom/adbert/AdbertADView;)V

    goto/16 :goto_0

    .line 535
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->f:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 536
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    iget-object v1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->m(Lcom/adbert/AdbertADView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->n(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->n(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adbert/AdbertListener;->onReceive(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1, v5}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;Z)Z

    .line 540
    invoke-static {v0}, Lcom/adbert/a/i;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 542
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/adbert/a/b/a;->g:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 543
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-static {}, Lcom/adbert/a/i;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-virtual {v0}, Lcom/adbert/AdbertADView;->setAdmob()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    .line 549
    iget-object v0, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->h:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 551
    :cond_d
    iget-object v1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->m(Lcom/adbert/AdbertADView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->n(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->n(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adbert/AdbertListener;->onFailedReceive(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/adbert/AdbertADView$MyHandler;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1, v5}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;Z)Z

    .line 554
    invoke-static {v0}, Lcom/adbert/a/i;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
