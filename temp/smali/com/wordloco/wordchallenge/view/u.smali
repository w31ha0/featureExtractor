.class Lcom/wordloco/wordchallenge/view/u;
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
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/u;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 321
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/u;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 322
    const v1, 0x7f090084

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/u;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 324
    const-class v3, Lcom/wordloco/wordchallenge/view/OkCancelDialog;

    .line 323
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    const-string v2, "textToShare"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v0, "source"

    const-string v2, "Buy"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/u;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/view/Game;->startActivity(Landroid/content/Intent;)V

    .line 328
    return-void
.end method
