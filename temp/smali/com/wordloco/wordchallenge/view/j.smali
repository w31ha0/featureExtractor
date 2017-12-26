.class Lcom/wordloco/wordchallenge/view/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/i;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/j;->a:Lcom/wordloco/wordchallenge/view/i;

    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/j;)Lcom/wordloco/wordchallenge/view/i;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/j;->a:Lcom/wordloco/wordchallenge/view/i;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/j;->a:Lcom/wordloco/wordchallenge/view/i;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/i;->a(Lcom/wordloco/wordchallenge/view/i;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1126
    const v1, 0x7f040003

    .line 1124
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1127
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/j;->a:Lcom/wordloco/wordchallenge/view/i;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/i;->a(Lcom/wordloco/wordchallenge/view/i;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v1

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1128
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1130
    new-instance v1, Lcom/wordloco/wordchallenge/view/k;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/k;-><init>(Lcom/wordloco/wordchallenge/view/j;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1157
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1118
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/j;->a:Lcom/wordloco/wordchallenge/view/i;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/i;->a(Lcom/wordloco/wordchallenge/view/i;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->i()V

    .line 1113
    return-void
.end method
