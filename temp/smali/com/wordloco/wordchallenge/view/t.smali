.class Lcom/wordloco/wordchallenge/view/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Game;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Game;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/t;->a:Lcom/wordloco/wordchallenge/view/Game;

    iput-object p2, p0, Lcom/wordloco/wordchallenge/view/t;->b:Landroid/view/View;

    .line 2130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/t;->b:Landroid/view/View;

    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2143
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 2138
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 2134
    return-void
.end method
