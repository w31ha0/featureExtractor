.class public Lcom/netflix/mediaclient/ui/settings/SettingsActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$BandwidthSavingCallback;
.implements Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_settings"


# instance fields
.field private final mOsvSpaceUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field private netflixStorageSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->mOsvSpaceUpdatedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->netflixStorageSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->netflixStorageSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->setupStorageIndicator()V

    return-void
.end method

.method public static createStartIntent(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/util/StringUtils;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupStorageIndicator()V
    .locals 5

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 122
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    .line 125
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getOfflineStorageVolumeList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;

    move-result-object v3

    .line 127
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 128
    invoke-interface {v3, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    .line 129
    new-instance v4, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    invoke-direct {v4, p0, p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 127
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 132
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected createActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/BarkerKidsActionBar;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->hasUpAction()Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/BarkerKidsActionBar;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 69
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
    .line 288
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$2;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->create()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f03006a

    return v0
.end method

.method public getDownloadsSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->netflixStorageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->settings:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public onBandwidthSettingsDone(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->onBandwidthSettingsDone(Landroid/content/Context;)V

    .line 307
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->mOsvSpaceUpdatedReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.offline.osv.space.usage.updated"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->registerReceiverLocallyWithAutoUnregister(Landroid/content/BroadcastReceiver;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    packed-switch p1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v4

    if-nez v0, :cond_1

    .line 98
    const-string/jumbo v0, "nf_settings"

    const-string/jumbo v1, "permission is granted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_1
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 100
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 102
    const-string/jumbo v1, "nf_settings"

    const-string/jumbo v2, "onRequestPermissionsResult showRationale=%b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    if-eqz v1, :cond_0

    .line 105
    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->onExternalStoragePermissionDenied()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->recalculateSpaceUsageForOfflineStorageVolumes()V

    .line 63
    :cond_0
    return-void
.end method

.method public refreshStorageIndicator()V
    .locals 2

    .prologue
    .line 137
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 138
    if-eqz v0, :cond_1

    .line 140
    const v1, 0x7f0901f6

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    .line 141
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->update()V

    .line 143
    :cond_0
    const v1, 0x7f09020a

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;

    .line 144
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity$StorageIndicatorViewHolder;->update()V

    .line 146
    :cond_1
    return-void
.end method

.method protected showMdxInMenu()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method
