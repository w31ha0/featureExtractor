.class Lcom/wordloco/wordchallenge/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/j;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/k;->a:Lcom/wordloco/wordchallenge/view/j;

    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/k;->a:Lcom/wordloco/wordchallenge/view/j;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/j;->a(Lcom/wordloco/wordchallenge/view/j;)Lcom/wordloco/wordchallenge/view/i;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/i;->a(Lcom/wordloco/wordchallenge/view/i;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v0

    .line 1146
    const v1, 0x7f060068

    .line 1145
    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1148
    const/4 v1, 0x4

    .line 1147
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1151
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/k;->a:Lcom/wordloco/wordchallenge/view/j;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/j;->a(Lcom/wordloco/wordchallenge/view/j;)Lcom/wordloco/wordchallenge/view/i;

    move-result-object v1

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/i;->a(Lcom/wordloco/wordchallenge/view/i;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1152
    const-class v2, Lcom/wordloco/wordchallenge/view/Game;

    .line 1150
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/k;->a:Lcom/wordloco/wordchallenge/view/j;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/j;->a(Lcom/wordloco/wordchallenge/view/j;)Lcom/wordloco/wordchallenge/view/i;

    move-result-object v1

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/i;->a(Lcom/wordloco/wordchallenge/view/i;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wordloco/wordchallenge/view/Game;->startActivity(Landroid/content/Intent;)V

    .line 1154
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/k;->a:Lcom/wordloco/wordchallenge/view/j;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/j;->a(Lcom/wordloco/wordchallenge/view/j;)Lcom/wordloco/wordchallenge/view/i;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/i;->a(Lcom/wordloco/wordchallenge/view/i;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->finish()V

    .line 1155
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1140
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/k;->a:Lcom/wordloco/wordchallenge/view/j;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/j;->a(Lcom/wordloco/wordchallenge/view/j;)Lcom/wordloco/wordchallenge/view/i;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/i;->a(Lcom/wordloco/wordchallenge/view/i;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->i()V

    .line 1135
    return-void
.end method
