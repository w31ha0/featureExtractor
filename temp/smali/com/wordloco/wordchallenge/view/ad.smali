.class Lcom/wordloco/wordchallenge/view/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/ac;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/ac;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ad;->a:Lcom/wordloco/wordchallenge/view/ac;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 450
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-static {}, Lcom/wordloco/wordchallenge/d/j;->d()V

    .line 453
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/i;->f(Z)V

    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 456
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/ad;->a:Lcom/wordloco/wordchallenge/view/ac;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/ac;->a(Lcom/wordloco/wordchallenge/view/ac;)Lcom/wordloco/wordchallenge/view/Home;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 457
    const-class v2, Lcom/wordloco/wordchallenge/view/Game;

    .line 455
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/ad;->a:Lcom/wordloco/wordchallenge/view/ac;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/ac;->a(Lcom/wordloco/wordchallenge/view/ac;)Lcom/wordloco/wordchallenge/view/Home;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wordloco/wordchallenge/view/Home;->startActivity(Landroid/content/Intent;)V

    .line 459
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ad;->a:Lcom/wordloco/wordchallenge/view/ac;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/ac;->a(Lcom/wordloco/wordchallenge/view/ac;)Lcom/wordloco/wordchallenge/view/Home;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Home;->finish()V

    .line 460
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 440
    return-void
.end method
