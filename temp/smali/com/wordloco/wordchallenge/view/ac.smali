.class Lcom/wordloco/wordchallenge/view/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Home;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ac;->a:Lcom/wordloco/wordchallenge/view/Home;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/wordloco/wordchallenge/view/ac;)Lcom/wordloco/wordchallenge/view/Home;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ac;->a:Lcom/wordloco/wordchallenge/view/Home;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 429
    new-instance v0, Lcom/wordloco/wordchallenge/a/d;

    invoke-direct {v0, p1, p1}, Lcom/wordloco/wordchallenge/a/d;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 432
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 435
    new-instance v1, Lcom/wordloco/wordchallenge/view/ad;

    invoke-direct {v1, p0}, Lcom/wordloco/wordchallenge/view/ad;-><init>(Lcom/wordloco/wordchallenge/view/ac;)V

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/a/d;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 462
    return-void
.end method
