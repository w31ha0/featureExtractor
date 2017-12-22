.class public final Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;
.super Ljava/lang/Object;
.source "BandwidthUtility.java"


# static fields
.field public static final BW_TO_START_BIF_DOWNLOAD:I = 0x1f4

.field private static final DEFAULT_AUTO_SWITCH_STATE_ON:Ljava/lang/Boolean;

.field public static final DEFAULT_CELLULAR_AUTO_KBPS:I = 0x258

.field public static final DEFAULT_MANUAL_CHOICE:I

.field private static final DEFAULT_MANUAL_VIDEO_BITRATE_HIGH:I = 0x960

.field private static final DEFAULT_MANUAL_VIDEO_BITRATE_LOW:I = 0x190

.field private static final DEFAULT_MANUAL_VIDEO_BITRATE_MEDIUM:I = 0x44c

.field private static final FORCE_DATA_SAVING_PREF:Ljava/lang/Boolean;

.field public static final MAX_BR_THRESHOLD_DEFAULT_KBPS:I = 0x4e20

.field public static final MAX_CELLULAR_DOWNLOAD_LIMIT:I = 0x249f0

.field public static final MAX_WIFI_DOWNLOAD_LIMIT:I = 0x493e0

.field public static MaxNonAdaptiveThreshold:I = 0x0

.field public static final TAG:Ljava/lang/String; = "nf_bw_saving"

.field private static final UNLIMITED_CELLULAR_BITRATE_KBPS:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->FORCE_DATA_SAVING_PREF:Ljava/lang/Boolean;

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->DEFAULT_MANUAL_CHOICE:I

    .line 27
    const/16 v0, 0x4b0

    sput v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->MaxNonAdaptiveThreshold:I

    .line 36
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->DEFAULT_AUTO_SWITCH_STATE_ON:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCurrentMaxAllowedBitrate(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I
    .locals 4

    .prologue
    .line 232
    const/16 v1, 0x4e20

    .line 235
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isBWSavingEnabledForPlay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getCellularVideoBitrateKbps(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    .line 240
    if-lez v0, :cond_1

    .line 248
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 249
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->isAvcDecoderSupportsAdaptivePlayback()Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    sget v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->MaxNonAdaptiveThreshold:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 255
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 240
    goto :goto_0

    :cond_2
    move v0, v1

    .line 242
    goto :goto_0
.end method

.method public static canShowDataSavingPreference(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->FORCE_DATA_SAVING_PREF:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->hasCellular(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    const-string/jumbo v0, "nf_bw_saving"

    const-string/jumbo v2, "no cellular!!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 163
    goto :goto_0
.end method

.method private static getBitrateForManualChoice(ILcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 135
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getDefaultManualVideoBitrateLow(Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    .line 149
    :goto_0
    return v0

    .line 137
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->MEDIUM:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 138
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getDefaultManualVideoBitrateMedium(Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    goto :goto_0

    .line 140
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->HIGH:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 141
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getDefaultManualVideoBitrateHigh(Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    goto :goto_0

    .line 143
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_3

    .line 144
    const/16 v0, 0x4e20

    goto :goto_0

    .line 146
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->OFF:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_4

    .line 147
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_4
    const/16 v0, 0x258

    goto :goto_0
.end method

.method public static getCellularVideoBitrateKbps(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I
    .locals 6

    .prologue
    .line 121
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getDefaultAutoVideoBitrate(Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v1

    .line 127
    invoke-static {v1, p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getBitrateForManualChoice(ILcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I

    move-result v0

    .line 129
    const-string/jumbo v2, "nf_bw_saving"

    const-string/jumbo v3, "getCellularVideoBitrateKbps manual: %b,  : %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getDataSaverDescription(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 170
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const v0, 0x7f0900ae

    .line 175
    :goto_0
    return v0

    .line 174
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v0

    .line 175
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->create(I)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoiceDescription(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)I

    move-result v0

    goto :goto_0
.end method

.method private static getDefaultAutoVideoBitrate(Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I
    .locals 1

    .prologue
    .line 283
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateAuto:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateAuto:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x258

    goto :goto_0
.end method

.method private static getDefaultManualVideoBitrateHigh(Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I
    .locals 1

    .prologue
    .line 279
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateHigh:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateHigh:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x960

    goto :goto_0
.end method

.method private static getDefaultManualVideoBitrateLow(Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I
    .locals 1

    .prologue
    .line 271
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateLow:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateLow:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x190

    goto :goto_0
.end method

.method private static getDefaultManualVideoBitrateMedium(Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;)I
    .locals 1

    .prologue
    .line 275
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateMedium:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;->videoBitrateMedium:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x44c

    goto :goto_0
.end method

.method public static getManualChoice(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 62
    const-string/jumbo v0, "bw_user_manual_setting"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 63
    if-ltz v0, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 64
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->DEFAULT_MANUAL_CHOICE:I

    .line 66
    :cond_1
    return v0
.end method

.method private static getManualChoiceDescription(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)I
    .locals 3

    .prologue
    .line 179
    const v0, 0x7f0900ae

    .line 180
    sget-object v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility$1;->$SwitchMap$com$netflix$mediaclient$ui$bandwidthsetting$BandwidthPreferenceDialog$ManualBwChoice:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    return v0

    .line 182
    :pswitch_0
    const v0, 0x7f0900b6

    .line 183
    goto :goto_0

    .line 185
    :pswitch_1
    const v0, 0x7f0900b2

    .line 186
    goto :goto_0

    .line 188
    :pswitch_2
    const v0, 0x7f0900b4

    .line 189
    goto :goto_0

    .line 191
    :pswitch_3
    const v0, 0x7f0900b0

    .line 192
    goto :goto_0

    .line 194
    :pswitch_4
    const v0, 0x7f0900bc

    .line 195
    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static isAutomaticOn(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "bw_user_control_auto"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 49
    if-gez v0, :cond_0

    .line 50
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->DEFAULT_AUTO_SWITCH_STATE_ON:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBWSavingEnabledForPlay(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 216
    goto :goto_0

    .line 219
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v2

    .line 220
    sget-object v3, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v3

    if-eq v3, v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static isDataSaverDisabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 104
    const-string/jumbo v0, "disable_data_saver"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPlaybackInWifiOnly(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string/jumbo v1, "nf_play_no_wifi_warning"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v1

    .line 79
    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->OFF:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static migrateWifiOnlySetting(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isDataSaverDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string/jumbo v0, "nf_bw_saving"

    const-string/jumbo v1, "Data saver functionality is not yet enabled .. skip migrate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string/jumbo v0, "nf_play_no_wifi_warning"

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "nf_bw_saving"

    const-string/jumbo v1, "migrating wifi only setting to latest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->OFF:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v0

    .line 97
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->saveUserSelections(Landroid/content/Context;Ljava/lang/Boolean;I)V

    .line 98
    const-string/jumbo v0, "nf_bw_saving"

    const-string/jumbo v1, "unsetting old wifi only setting"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string/jumbo v0, "nf_play_no_wifi_warning"

    invoke-static {p0, v0, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public static saveUserSelections(Landroid/content/Context;Ljava/lang/Boolean;I)V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v1, "bw_user_control_auto"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 58
    const-string/jumbo v0, "bw_user_manual_setting"

    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 59
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldChangeBitrateOnConnectivityChange(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 266
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->shouldLimitCellularVideoBitrate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldDelayBifForPlay(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isBWSavingEnabledForPlay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v1

    .line 228
    sget-object v2, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldLimitCellularVideoBitrate(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v0, "nf_bw_saving"

    const-string/jumbo v3, "shouldLimitCellularVideoBitrate :%b"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    :goto_0
    return v1

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v0

    .line 115
    sget-object v3, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v3

    if-eq v3, v0, :cond_1

    move v0, v1

    .line 116
    :goto_1
    const-string/jumbo v3, "nf_bw_saving"

    const-string/jumbo v4, "shouldLimitCellularVideoBitrate :%b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v0

    .line 117
    goto :goto_0

    :cond_1
    move v0, v2

    .line 115
    goto :goto_1
.end method
