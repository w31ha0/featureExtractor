.class Lcom/wordloco/wordchallenge/view/m;
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
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 1403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/m;)Lcom/wordloco/wordchallenge/view/Game;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v2, 0x7f06005e

    .line 1405
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->h(Lcom/wordloco/wordchallenge/view/Game;)I

    move-result v0

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Game;->i(Lcom/wordloco/wordchallenge/view/Game;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1406
    :goto_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->h(Lcom/wordloco/wordchallenge/view/Game;)I

    move-result v0

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Game;->i(Lcom/wordloco/wordchallenge/view/Game;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1448
    :goto_1
    return-void

    .line 1408
    :cond_0
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    :goto_2
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1413
    if-eqz v0, :cond_1

    .line 1414
    new-instance v1, Lcom/wordloco/wordchallenge/view/n;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/n;-><init>(Lcom/wordloco/wordchallenge/view/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->h(Lcom/wordloco/wordchallenge/view/Game;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/wordloco/wordchallenge/view/Game;->a(Lcom/wordloco/wordchallenge/view/Game;I)V

    goto :goto_0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1429
    :cond_2
    const-wide/16 v0, 0xa

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1433
    :goto_3
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1434
    if-eqz v0, :cond_3

    .line 1435
    new-instance v1, Lcom/wordloco/wordchallenge/view/o;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/o;-><init>(Lcom/wordloco/wordchallenge/view/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1445
    :cond_3
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->h(Lcom/wordloco/wordchallenge/view/Game;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/wordloco/wordchallenge/view/Game;->a(Lcom/wordloco/wordchallenge/view/Game;I)V

    .line 1427
    :cond_4
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->h(Lcom/wordloco/wordchallenge/view/Game;)I

    move-result v0

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/m;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Game;->i(Lcom/wordloco/wordchallenge/view/Game;)I

    move-result v1

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 1430
    :catch_1
    move-exception v0

    .line 1431
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method
