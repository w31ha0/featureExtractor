.class public Lcom/netflix/mediaclient/ui/settings/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# static fields
.field private static final FAKE_KEY_BW_SAVE:Ljava/lang/String; = "nf.bw_save"

.field private static final FAKE_KEY_DOWNLOADS_DELETE_ALL_CONFIG:Ljava/lang/String; = "pref.downloads.remove_all"

.field private static final FAKE_KEY_DOWNLOADS_STORAGE_SELECTOR:Ljava/lang/String; = "pref.downloads.storage_selector"

.field private static final FAKE_KEY_DOWNLOADS_VIDEO_QUALITY_CONFIG:Ljava/lang/String; = "pref.downloads.video_quality"

.field private static final FAKE_KEY_ENABLE_NOTIFICATIONS:Ljava/lang/String; = "nf_notification_enable"

.field private static final FAKE_KEY_SUBTITLE_CONFIG:Ljava/lang/String; = "ui.subtitleConfig"

.field private static final FAKE_KEY_WIFI_ONLY:Ljava/lang/String; = "nf_play_no_wifi_warning"

.field private static final HDR_VIDEO_FORMAT_DOLBY:Ljava/lang/String; = "Dolby Vision"

.field private static final HDR_VIDEO_FORMAT_HDR10:Ljava/lang/String; = "HDR10"

.field private static final HDR_VIDEO_FORMAT_NONE:Ljava/lang/String; = "Default(AVC)"

.field private static final KEY_DOWNLOADS_WIFI_ONLY_CONFIG:Ljava/lang/String; = "pref.downloads.wifi_only"

.field private static final KEY_PREF_NOTIFICATION:Ljava/lang/String; = "pref.notification"

.field private static final OFFLINE_VIDEO_FORMAT_AVC:Ljava/lang/String; = "Default"

.field private static final OFFLINE_VIDEO_FORMAT_HEVC:Ljava/lang/String; = "HEVC"

.field private static final OFFLINE_VIDEO_FORMAT_VP9:Ljava/lang/String; = "VP9"

.field private static final PREFS_DOWNLOAD_CATEGORY_KEY:Ljava/lang/String; = "pref.downloads"

.field private static final PREFS_NAME:Ljava/lang/String; = "nfxpref"

.field private static final SUBTITLE_CONFIG_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field private static final SUBTITLE_CONFIG_ENHANCED_XML:Ljava/lang/String; = "ENHANCED_XML"

.field private static final SUBTITLE_CONFIG_SIMPLE_XML:Ljava/lang/String; = "SIMPLE_XML"

.field private static final TAG:Ljava/lang/String; = "SettingsFragment"

.field private static final VIDEO_FORMAT_VP9:Ljava/lang/String; = "VP9"

.field private static final WRITE_EXT_STORAGE_PERMISSION_DEBUG:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private activityCallback:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

.field dialog:Landroid/app/Dialog;

.field private final mDeleteAllListener:Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;

.field private serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$1;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->mDeleteAllListener:Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->mDeleteAllListener:Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleAllOfflineItemsDeleted()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->updateSubtitleConfig(Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activityCallback:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->updateDownloadsVideoQualityConfig(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-void
.end method

.method public static create()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;-><init>()V

    return-object v0
.end method

.method private handleAllOfflineItemsDeleted()V
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;

    .line 139
    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string/jumbo v1, "pref.downloads.remove_all"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 143
    const-string/jumbo v1, "pref.downloads"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 144
    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/SettingsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->recalculateSpaceUsageForOfflineStorageVolumes()V

    goto :goto_0
.end method

.method private handleAndroidHttpStackSettings(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method private handleBandwidthSaveSettings()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->canShowDataSavingPreference(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeBwSettings()V

    .line 487
    :goto_0
    return-void

    .line 467
    :cond_0
    const-string/jumbo v0, "nf.bw_save"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 468
    if-nez v0, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeBwSettings()V

    goto :goto_0

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->setDataSaverDescription(Landroid/content/Context;Landroid/preference/Preference;)V

    .line 475
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$8;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private handleCastAppIdSettings()V
    .locals 3

    .prologue
    .line 846
    const-string/jumbo v0, "ui.castAppId"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_0

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0900be

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getCastApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 849
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$13;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$13;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 871
    :cond_0
    return-void
.end method

.method private handleDownloadsDeleteAllConfig(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 3

    .prologue
    .line 550
    const-string/jumbo v0, "pref.downloads.remove_all"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 551
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getTitleCount()I

    move-result v0

    .line 557
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 558
    const-string/jumbo v0, "pref.downloads"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 561
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$10;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private handleDownloadsPreferenceGroup(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    .prologue
    .line 884
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleDownloadsStorageSelectorSetting(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 886
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleDownloadsDeleteAllConfig(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 887
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleDownloadsVideoQualityConfig(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 888
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleDownloadsWifiOnlySetting(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 893
    :goto_0
    return-void

    .line 890
    :cond_0
    const-string/jumbo v0, "pref.downloads"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 891
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private handleDownloadsStorageSelectorSetting(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 8

    .prologue
    .line 896
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "handleDownloadsStorageSelectorSetting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    .line 898
    if-nez v1, :cond_0

    .line 899
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "handleDownloadsStorageSelectorSetting offlineAgent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :goto_0
    return-void

    .line 902
    :cond_0
    const-string/jumbo v0, "pref.downloads.storage_selector"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 903
    if-nez v2, :cond_1

    .line 904
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "handleDownloadsStorageSelectorSetting dl location pref is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getOfflineStorageVolumeList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;

    move-result-object v0

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getOfflineStorageVolumeList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->getCurrentSelectedVolumeIndex()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;->isStorageRemovable(I)Z

    move-result v0

    .line 909
    const-string/jumbo v3, "SettingsFragment"

    const-string/jumbo v4, "currentStorageRemovable=%b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 910
    if-eqz v0, :cond_2

    const v0, 0x7f09020a

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 911
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->recalculateSpaceUsageForOfflineStorageVolumes()V

    .line 913
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$14;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;Landroid/preference/Preference;)V

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 910
    :cond_2
    const v0, 0x7f0901f6

    goto :goto_1
.end method

.method private handleDownloadsVideoQualityConfig(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 3

    .prologue
    .line 599
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 600
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    const-string/jumbo v0, "pref.downloads"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 605
    const-string/jumbo v0, "pref.downloads.video_quality"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 607
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 608
    :cond_2
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "downloads downloadCategoryPref or downloadQualityPref is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    :cond_3
    instance-of v1, v1, Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_4

    .line 613
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "downloadCategoryPref not a group pref"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    :cond_4
    instance-of v1, v0, Landroid/preference/ListPreference;

    if-nez v1, :cond_5

    .line 618
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "downloads downloadQualityPref not a list pref"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 624
    :cond_5
    check-cast v0, Landroid/preference/ListPreference;

    .line 626
    if-eqz v0, :cond_7

    .line 627
    const-string/jumbo v1, "SettingsFragment"

    const-string/jumbo v2, "Debug: downloads video quality"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$11;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Landroid/preference/ListPreference;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 661
    instance-of v1, v0, Landroid/preference/ListPreference;

    if-eqz v1, :cond_6

    .line 662
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->populateDownloadsVideoQualityDefaults(Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 664
    :cond_6
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Preference downloads video quality type is NOT list preference!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :cond_7
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Debug: downloads video quality not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleDownloadsWifiOnlySetting(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    const-string/jumbo v0, "pref.downloads.wifi_only"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 440
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getRequiresUnmeteredNetwork()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 446
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$7;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private handleForceSoftwareDecoder()V
    .locals 3

    .prologue
    .line 351
    const-string/jumbo v0, "ui.forceswdecoder"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 352
    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 353
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 354
    const-string/jumbo v1, "VP9: SW decoder ["

    .line 355
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9SoftwareDecoder()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], HW decoder ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasVP9HardwareDecoder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 366
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], secured ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureVP9Decoder()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nHEVC: HW decoder ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasHEVCHardwareDecoder()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], secured ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasSecureHEVCDecoder()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Yes]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isUseSoftwareDecoder()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 386
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$6;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 417
    :cond_0
    return-void

    .line 358
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 364
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 370
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 376
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 382
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "No]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private handleOfflineVideoFormatSetting()V
    .locals 5

    .prologue
    .line 263
    const-string/jumbo v0, "ui.offlineVideoFormat"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_0

    .line 265
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v2, "set offline video format"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$4;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 281
    instance-of v0, v1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 285
    const-string/jumbo v0, "Default"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    const-string/jumbo v0, "HEVC"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    const-string/jumbo v0, "VP9"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string/jumbo v0, "video/avc"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    const-string/jumbo v0, "video/hevc"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 291
    check-cast v0, Landroid/preference/ListPreference;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 292
    check-cast v0, Landroid/preference/ListPreference;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->getPresetFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 294
    check-cast v1, Landroid/preference/ListPreference;

    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->getPresetFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, " offline video format is NOT list preference!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePushNotificationsSettings()V
    .locals 2

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->isGcmSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Notifications are NOT supported!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeNotificationGroup()V

    .line 824
    :goto_0
    return-void

    .line 783
    :cond_0
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Enable notifications"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->isRegisteredForPushNotifications()Z

    move-result v1

    .line 791
    const-string/jumbo v0, "nf_notification_enable"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 792
    if-eqz v0, :cond_1

    .line 793
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 794
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$12;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 820
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeNotificationGroup()V

    goto :goto_0
.end method

.method private handleResetOfflineLicenseSyncTime()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method private handleStreamingVideoFormatSetting()V
    .locals 5

    .prologue
    .line 301
    const-string/jumbo v0, "ui.hdrVideoFormat"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_3

    .line 303
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v2, "set HDR video format"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$5;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    instance-of v0, v1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    const-string/jumbo v0, "Default(AVC)"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    const-string/jumbo v0, "video/avc"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasHdr10Decoder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const-string/jumbo v0, "HDR10"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    const-string/jumbo v0, "video/hevc"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isHasDolbyVisionDecoder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const-string/jumbo v0, "Dolby Vision"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    const-string/jumbo v0, "video/dolby-vision"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isSupportVP9()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    const-string/jumbo v0, "VP9"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v1

    .line 341
    check-cast v0, Landroid/preference/ListPreference;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 342
    check-cast v0, Landroid/preference/ListPreference;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 343
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->getPresetFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 344
    check-cast v1, Landroid/preference/ListPreference;

    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->getPresetFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 349
    :cond_3
    :goto_0
    return-void

    .line 346
    :cond_4
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, " HDR video format is NOT list preference!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSubtitleConfig()V
    .locals 3

    .prologue
    .line 504
    const-string/jumbo v0, "ui.subtitleConfig"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_1

    .line 506
    const-string/jumbo v1, "SettingsFragment"

    const-string/jumbo v2, "Debug: subtitle config"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v1, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$9;-><init>(Lcom/netflix/mediaclient/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 538
    instance-of v1, v0, Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 539
    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->populateSubtitleConfig(Landroid/preference/ListPreference;)V

    .line 546
    :goto_0
    return-void

    .line 541
    :cond_0
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Preference player type is NOT list preference!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_1
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Debug: player overlay not found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleWifiOnlySetting()V
    .locals 1

    .prologue
    .line 420
    const-string/jumbo v0, "nf_play_no_wifi_warning"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 421
    if-nez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->migrateWifiOnlySetting(Landroid/content/Context;)V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->canShowDataSavingPreference(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->removeWiFiOnlySettings()V

    goto :goto_0
.end method

.method private isGcmSupported()Z
    .locals 2

    .prologue
    .line 759
    :try_start_0
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Verifies that the device supports GCM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    const/4 v0, 0x1

    .line 764
    :goto_0
    return v0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Device does NOT supports GCM"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRegisteredForPushNotifications()Z
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SettingsConfiguration;->getPushOptInStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private populateDownloadsVideoQualityChoices(Landroid/preference/ListPreference;)V
    .locals 4

    .prologue
    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 720
    const v2, 0x7f090207

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090208

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->generateBoldTitleAndSubtitles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    const v2, 0x7f090205

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090206

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->generateBoldTitleAndSubtitles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->BEST:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 727
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 728
    return-void
.end method

.method private populateDownloadsVideoQualityDefaults(Landroid/preference/ListPreference;)V
    .locals 3

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getCurrentDownloadVideoQuality()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    move-result-object v0

    .line 734
    const-string/jumbo v1, "pref.downloads.video_quality"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 736
    sget-object v2, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$15;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadVideoQuality:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 749
    :goto_0
    return-void

    .line 738
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->BEST:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 739
    const v0, 0x7f090205

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 744
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->DEFAULT:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 745
    const v0, 0x7f090207

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 736
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private populateSubtitleConfig(Landroid/preference/ListPreference;)V
    .locals 4

    .prologue
    .line 687
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->loadQaLocalOverride(Landroid/content/Context;)Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    move-result-object v0

    .line 689
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 690
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 692
    const v3, 0x7f0902bb

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    const-string/jumbo v3, "DEFAULT"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    const v3, 0x7f0902bc

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    const-string/jumbo v3, "ENHANCED_XML"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    const v3, 0x7f0902be

    invoke-virtual {p0, v3}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    const-string/jumbo v3, "SIMPLE_XML"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    const-string/jumbo v3, "DEFAULT"

    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 703
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->SIMPLE_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-ne v0, v3, :cond_0

    .line 704
    const-string/jumbo v0, "SIMPLE_XML"

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 711
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 712
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 713
    return-void

    .line 705
    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->ENHANCED_XML:Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;

    if-ne v0, v3, :cond_1

    .line 706
    const-string/jumbo v0, "ENHANCED_XML"

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_1
    const-string/jumbo v0, "DEFAULT"

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeBwSettings()V
    .locals 2

    .prologue
    .line 490
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "removing bandwidth settings"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string/jumbo v0, "video.playback"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string/jumbo v1, "nf.bw_save"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 492
    return-void
.end method

.method private removeNotificationGroup()V
    .locals 3

    .prologue
    .line 831
    const-string/jumbo v0, "nf_notification_enable"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 833
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 834
    const-string/jumbo v1, "pref.notification"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 835
    if-eqz v1, :cond_1

    .line 837
    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 841
    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 843
    :cond_1
    return-void
.end method

.method private removeWiFiOnlySettings()V
    .locals 2

    .prologue
    .line 495
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "removing WiFiOnly settings"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string/jumbo v0, "video.playback"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string/jumbo v1, "nf_play_no_wifi_warning"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 497
    return-void
.end method

.method private setDataSaverDescription(Landroid/content/Context;Landroid/preference/Preference;)V
    .locals 1

    .prologue
    .line 987
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getDataSaverDescription(Landroid/content/Context;)I

    move-result v0

    .line 991
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private updateDownloadsVideoQualityConfig(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 1

    .prologue
    .line 680
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->setDownloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)V

    .line 683
    :cond_0
    return-void
.end method

.method private updateSubtitleConfig(Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;)V
    .locals 3

    .prologue
    .line 672
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "Update subtitle config"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_SUBTITLE_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 674
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PLAYER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string/jumbo v1, "lookupType"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/configuration/SubtitleConfiguration;->getLookupType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 677
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 164
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activityCallback:Lcom/netflix/mediaclient/ui/settings/SettingsFragment$ActivityCallbackListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    return-void

    .line 167
    :catch_0
    move-exception v1

    .line 168
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement ActivityCallbackListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onBandwidthSettingsDone(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 979
    const-string/jumbo v0, "nf.bw_save"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 980
    if-nez v0, :cond_0

    .line 984
    :goto_0
    return-void

    .line 983
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->setDataSaverDescription(Landroid/content/Context;Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->activity:Landroid/app/Activity;

    .line 179
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string/jumbo v1, "nfxpref"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 182
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->addPreferencesFromResource(I)V

    .line 184
    const-string/jumbo v0, "pref.downloads.video_quality"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 186
    instance-of v1, v0, Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->populateDownloadsVideoQualityChoices(Landroid/preference/ListPreference;)V

    .line 199
    :cond_0
    const-string/jumbo v0, "pref.screen"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    const-string/jumbo v1, "pref.qa.debugonly"

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handlePushNotificationsSettings()V

    .line 203
    return-void
.end method

.method public onExternalStoragePermissionDenied()V
    .locals 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_0

    .line 998
    const-string/jumbo v1, "SettingsFragment"

    const-string/jumbo v2, "onExternalStoragePermissionDenied reverting to internal storage"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->setCurrentOfflineStorageVolume(I)V

    .line 1000
    const-string/jumbo v0, "pref.downloads.storage_selector"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1001
    if-eqz v0, :cond_0

    .line 1002
    const v1, 0x7f0901f6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 1007
    :cond_0
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 875
    const-string/jumbo v0, "SettingsFragment"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    .line 877
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleWifiOnlySetting()V

    .line 878
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleBandwidthSaveSettings()V

    .line 879
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleDownloadsPreferenceGroup(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 880
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->handleAndroidHttpStackSettings(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 881
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 976
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 252
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 245
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 246
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 258
    const-string/jumbo v0, "nf_play_no_wifi_warning"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "nf_play_no_wifi_warning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 261
    :cond_0
    return-void
.end method
