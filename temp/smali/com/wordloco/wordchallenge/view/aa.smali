.class Lcom/wordloco/wordchallenge/view/aa;
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
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/aa;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 577
    const-string v0, "Share Game +Facebook"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/aa;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v2, 0x0

    .line 582
    sget-object v3, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v3, v1, v2

    .line 580
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v0

    .line 582
    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 584
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/aa;->a:Lcom/wordloco/wordchallenge/view/Game;

    .line 583
    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 585
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/aa;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/view/Game;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 586
    const v2, 0x7f0900a7

    .line 585
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 587
    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/aa;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Game;->e(Lcom/wordloco/wordchallenge/view/Game;)Lcom/facebook/UiLifecycleHelper;

    move-result-object v1

    .line 589
    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    .line 588
    invoke-virtual {v1, v0}, Lcom/facebook/UiLifecycleHelper;->trackPendingDialogCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/aa;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Game;->d(Lcom/wordloco/wordchallenge/view/Game;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/aa;->a:Lcom/wordloco/wordchallenge/view/Game;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Game;->d(Lcom/wordloco/wordchallenge/view/Game;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 598
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/aa;->a:Lcom/wordloco/wordchallenge/view/Game;

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Lcom/wordloco/wordchallenge/view/Game;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 597
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 602
    :cond_1
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
