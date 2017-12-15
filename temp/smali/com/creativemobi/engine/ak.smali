.class final Lcom/creativemobi/engine/ak;
.super Ljava/lang/Object;
.source "RacingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/creativemobi/engine/y;

.field private synthetic b:Z

.field private synthetic c:Lcom/creativemobi/engine/bp;


# direct methods
.method constructor <init>(Lcom/creativemobi/engine/bp;Lcom/creativemobi/engine/y;Z)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iput-object p2, p0, Lcom/creativemobi/engine/ak;->a:Lcom/creativemobi/engine/y;

    iput-boolean p3, p0, Lcom/creativemobi/engine/ak;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v0, v0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v0, v0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v0, v0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    invoke-interface {v0}, Lcom/creativemobi/engine/y;->a()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v1, p0, Lcom/creativemobi/engine/ak;->a:Lcom/creativemobi/engine/y;

    iput-object v1, v0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    .line 553
    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    new-instance v1, Lcom/creativemobi/engine/w;

    iget-object v2, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    invoke-virtual {v2}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    invoke-virtual {v3}, Lcom/creativemobi/engine/bp;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/w;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, v0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    .line 554
    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v0, v0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    iget-boolean v1, p0, Lcom/creativemobi/engine/ak;->b:Z

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->a(Z)V

    .line 555
    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v0, v0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    iget-object v1, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cc;)V

    .line 556
    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v0, v0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    const-string v1, "graphics/loading.jpg"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v0, v0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-virtual {v0}, Lcom/creativemobi/engine/w;->b()V

    .line 559
    iget-object v0, p0, Lcom/creativemobi/engine/ak;->a:Lcom/creativemobi/engine/y;

    iget-object v1, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v1, v1, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    iget-object v2, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    invoke-virtual {v2}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    invoke-interface {v0, v1, v2, v3}, Lcom/creativemobi/engine/y;->a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V

    .line 561
    iget-object v0, p0, Lcom/creativemobi/engine/ak;->c:Lcom/creativemobi/engine/bp;

    iget-object v0, v0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-virtual {v0}, Lcom/creativemobi/engine/w;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
