.class Lcom/wordloco/wordchallenge/view/ae;
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
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/ae;->a:Lcom/wordloco/wordchallenge/view/Home;

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 468
    const-string v0, "Share Home +Rest"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 469
    new-instance v0, Landroid/content/Intent;

    .line 470
    const-string v1, "android.intent.action.SEND"

    .line 469
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v1, "android.intent.extra.SUBJECT"

    .line 474
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/ae;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v1, "android.intent.extra.TEXT"

    .line 477
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/ae;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 478
    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/ae;->a:Lcom/wordloco/wordchallenge/view/Home;

    .line 481
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/ae;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 482
    const v3, 0x7f0900a2

    .line 481
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wordloco/wordchallenge/view/Home;->startActivity(Landroid/content/Intent;)V

    .line 485
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/ae;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Home;->a(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/ae;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Home;->a(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 487
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/ae;->a:Lcom/wordloco/wordchallenge/view/Home;

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Lcom/wordloco/wordchallenge/view/Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 491
    :cond_0
    return-void
.end method
