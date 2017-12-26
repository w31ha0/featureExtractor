.class Lcom/wordloco/wordchallenge/view/z;
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
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/z;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 548
    const-string v0, "Share Game +Rest"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 549
    new-instance v0, Landroid/content/Intent;

    .line 550
    const-string v1, "android.intent.action.SEND"

    .line 549
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v1, "android.intent.extra.SUBJECT"

    .line 554
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/z;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v1, "android.intent.extra.TEXT"

    .line 557
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/z;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 558
    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 555
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/z;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 561
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/z;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 562
    const v3, 0x7f0900a2

    .line 561
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wordloco/wordchallenge/view/Game;->startActivity(Landroid/content/Intent;)V

    .line 565
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/z;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->d(Lcom/wordloco/wordchallenge/view/Game;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/z;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Game;->d(Lcom/wordloco/wordchallenge/view/Game;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 567
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/z;->a:Lcom/wordloco/wordchallenge/view/Game;

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 571
    :cond_0
    return-void
.end method
