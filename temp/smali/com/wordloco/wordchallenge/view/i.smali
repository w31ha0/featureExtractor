.class Lcom/wordloco/wordchallenge/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Game;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Game;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/i;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/i;)Lcom/wordloco/wordchallenge/view/Game;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/i;->a:Lcom/wordloco/wordchallenge/view/Game;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/i;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1104
    const v1, 0x7f040004

    .line 1103
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1105
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/i;->a:Lcom/wordloco/wordchallenge/view/Game;

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1106
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    new-instance v1, Lcom/wordloco/wordchallenge/view/j;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/j;-><init>(Lcom/wordloco/wordchallenge/view/i;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1159
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1098
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/i;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->i()V

    .line 1089
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/i;->a:Lcom/wordloco/wordchallenge/view/Game;

    const v1, 0x7f060068

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/i;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->r()I

    move-result v1

    .line 1091
    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->b()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1090
    invoke-static {v0, v1}, Lcom/wordloco/wordchallenge/view/Game;->a(Lcom/wordloco/wordchallenge/view/Game;I)V

    .line 1092
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/i;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {}, Lcom/wordloco/wordchallenge/d/i;->r()I

    move-result v1

    invoke-static {v0, v1}, Lcom/wordloco/wordchallenge/view/Game;->b(Lcom/wordloco/wordchallenge/view/Game;I)V

    .line 1093
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/i;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->g(Lcom/wordloco/wordchallenge/view/Game;)V

    .line 1094
    return-void
.end method
