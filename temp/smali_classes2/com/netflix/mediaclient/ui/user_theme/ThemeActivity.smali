.class public Lcom/netflix/mediaclient/ui/user_theme/ThemeActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "ThemeActivity.java"


# static fields
.field public static final IS_EDIT_MODE:Ljava/lang/String; = "is_edit_mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/user_theme/ThemeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    const-string/jumbo v1, "is_edit_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeActivity;->createPrimaryFrag()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    move-result-object v0

    return-object v0
.end method

.method protected createPrimaryFrag()Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeEditFragment;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeSelectFragment;-><init>()V

    goto :goto_0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
