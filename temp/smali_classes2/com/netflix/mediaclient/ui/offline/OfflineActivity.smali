.class public Lcom/netflix/mediaclient/ui/offline/OfflineActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "OfflineActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/common/PlayContextProvider;


# static fields
.field public static final PLAYABLE_ID:Ljava/lang/String; = "playable_id"

.field public static final PROFILE_ID:Ljava/lang/String; = "profile_id"

.field private static final TAG:Ljava/lang/String; = "nf_offline"

.field public static final TITLE_ID:Ljava/lang/String; = "title_id"


# instance fields
.field private deleteDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    return-void
.end method

.method private isInSelectionMode()Z
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showAllDownloads(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloads(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static showAllDownloads(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->showAllDownloadsForPlayable(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static showAllDownloadsForPlayable(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string/jumbo v1, "playable_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    :cond_0
    if-eqz p2, :cond_1

    .line 73
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    :cond_1
    return-object v0
.end method

.method public static showAllDownloadsForTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string/jumbo v1, "title_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string/jumbo v1, "profile_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_1
    if-eqz p3, :cond_2

    .line 95
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected canApplyBrowseExperience()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$1;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->create()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f0300bb

    return v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_MY_DOWNLOADS_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->offlineShows:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->switchToEditMode(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->invalidateOptionsMenu()V

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 154
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/Menu;)V

    .line 156
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getSelectedItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    const v0, 0x7f09008b

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 160
    const v1, 0x7f02019b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 161
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 162
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$2;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->areDownloadsPreset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const v0, 0x7f090154

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 199
    const v0, 0x7f0200f5

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    const v2, 0x7f0f0087

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/netflix/android/widgetry/utils/UiUtils;->tintAndGet(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 208
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 209
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$3;-><init>(Lcom/netflix/mediaclient/ui/offline/OfflineActivity;)V

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    .line 204
    :cond_2
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setIconIfApplicable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->closeAllPopupMenus()V

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->refreshAdapter()V

    .line 123
    :cond_0
    return-void
.end method

.method public performUpAction()V
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    .line 237
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->switchToEditMode(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->invalidateOptionsMenu()V

    .line 249
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->isEpisodesLevel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->setIntent(Landroid/content/Intent;)V

    .line 242
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->refreshAdapter()V

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->createShowIntent(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->finish()V

    goto :goto_0

    .line 247
    :cond_2
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onBackPressed()V

    goto :goto_0
.end method
