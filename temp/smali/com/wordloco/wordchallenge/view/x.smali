.class Lcom/wordloco/wordchallenge/view/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/Game;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/Game;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/x;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 485
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 486
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/x;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wordloco/wordchallenge/view/Game;

    .line 485
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/x;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v1, v0}, Lcom/wordloco/wordchallenge/view/Game;->startActivity(Landroid/content/Intent;)V

    .line 488
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/x;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->finish()V

    .line 489
    return-void
.end method
