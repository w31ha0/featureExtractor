.class public Lcom/netflix/mediaclient/ui/settings/AboutActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "AboutActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_AboutActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/BarkerKidsActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/AboutActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/BarkerKidsActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 94
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    goto :goto_0
.end method

.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/AboutActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/AboutActivity$1;-><init>(Lcom/netflix/mediaclient/ui/settings/AboutActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->create()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f03006a

    return v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->settings:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected hasUpAction()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public requestExternalStoragePermission()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 98
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isPermissionNotGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 101
    :cond_0
    return-void
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected showMdxInMenu()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method
