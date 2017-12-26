.class Lcom/wordloco/wordchallenge/view/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/wordloco/wordchallenge/view/ShareDialog;


# direct methods
.method constructor <init>(Lcom/wordloco/wordchallenge/view/ShareDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wordloco/wordchallenge/view/am;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 168
    const-string v0, "Share Dialog +Facebook"

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/a;->a(Ljava/lang/String;)V

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/am;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v2, 0x0

    .line 173
    sget-object v3, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v3, v1, v2

    .line 171
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v0

    .line 173
    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 176
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/am;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    .line 175
    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 177
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/am;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    const v2, 0x7f0900a7

    .line 177
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 179
    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/am;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/ShareDialog;->b(Lcom/wordloco/wordchallenge/view/ShareDialog;)Lcom/facebook/UiLifecycleHelper;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    .line 180
    invoke-virtual {v1, v0}, Lcom/facebook/UiLifecycleHelper;->trackPendingDialogCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wordloco/wordchallenge/view/am;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    invoke-static {v0}, Lcom/wordloco/wordchallenge/view/ShareDialog;->a(Lcom/wordloco/wordchallenge/view/ShareDialog;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    iget-object v1, p0, Lcom/wordloco/wordchallenge/view/am;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    invoke-static {v1}, Lcom/wordloco/wordchallenge/view/ShareDialog;->a(Lcom/wordloco/wordchallenge/view/ShareDialog;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/wordloco/wordchallenge/view/am;->a:Lcom/wordloco/wordchallenge/view/ShareDialog;

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Lcom/wordloco/wordchallenge/view/ShareDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 196
    :cond_1
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-static {v0}, Lcom/a/a/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
