.class Lcom/wordloco/wordchallenge/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/g;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/h;->a:Lcom/wordloco/wordchallenge/view/g;

    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1053
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/h;->a:Lcom/wordloco/wordchallenge/view/g;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/g;->a(Lcom/wordloco/wordchallenge/view/g;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->i()V

    .line 1042
    return-void
.end method
