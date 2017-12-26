.class Lcom/wordloco/wordchallenge/view/af;
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
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/af;->a:Lcom/wordloco/wordchallenge/view/Home;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 496
    const-string v0, "Share Home +Facebook"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/af;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v2, 0x0

    .line 501
    sget-object v3, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v3, v1, v2

    .line 499
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v0

    .line 501
    if-eqz v0, :cond_0

    .line 503
    new-instance v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 504
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/af;->a:Lcom/wordloco/wordchallenge/view/Home;

    .line 503
    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 505
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/af;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/view/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 506
    const v2, 0x7f0900a7

    .line 505
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 507
    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/af;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Home;->b(Lcom/wordloco/wordchallenge/view/Home;)Lcom/facebook/UiLifecycleHelper;

    move-result-object v1

    .line 509
    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    .line 508
    invoke-virtual {v1, v0}, Lcom/facebook/UiLifecycleHelper;->trackPendingDialogCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/af;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/Home;->a(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/af;->a:Lcom/wordloco/wordchallenge/view/Home;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/Home;->a(Lcom/wordloco/wordchallenge/view/Home;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 518
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/af;->a:Lcom/wordloco/wordchallenge/view/Home;

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Lcom/wordloco/wordchallenge/view/Home;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 517
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 522
    :cond_1
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
