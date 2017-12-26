.class Lcom/wordloco/wordchallenge/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/e;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/f;->a:Lcom/wordloco/wordchallenge/view/e;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 934
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 929
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/f;->a:Lcom/wordloco/wordchallenge/view/e;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/e;->a(Lcom/wordloco/wordchallenge/view/e;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->i()V

    .line 924
    return-void
.end method
