.class Lcom/wordloco/wordchallenge/view/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/m;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/m;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/o;->a:Lcom/wordloco/wordchallenge/view/m;

    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/o;->a:Lcom/wordloco/wordchallenge/view/m;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/m;->a(Lcom/wordloco/wordchallenge/view/m;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v0

    const v1, 0x7f06005e

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/view/Game;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1438
    if-eqz v0, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/o;->a:Lcom/wordloco/wordchallenge/view/m;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/m;->a(Lcom/wordloco/wordchallenge/view/m;)Lcom/wordloco/wordchallenge/view/Game;

    move-result-object v1

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Game;->h(Lcom/wordloco/wordchallenge/view/Game;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1439
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    :cond_0
    return-void
.end method
