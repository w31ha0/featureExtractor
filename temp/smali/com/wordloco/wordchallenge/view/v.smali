.class Lcom/wordloco/wordchallenge/view/v;
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
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/v;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/v;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 336
    const v1, 0x7f090085

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/v;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 338
    const-class v3, Lcom/wordloco/wordchallenge/view/OkCancelDialog;

    .line 337
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const-string v2, "textToShare"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v0, "source"

    const-string v2, "Restart"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/v;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/view/Game;->startActivity(Landroid/content/Intent;)V

    .line 343
    return-void
.end method
