.class public Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;
.super Ljava/lang/Object;
.source "ServiceErrorsHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceErrorsHandler"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static buildNetflixConnectivityErrorMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0901ce

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getServiceTimeoutMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-static {}, Lcom/netflix/mediaclient/util/WidevineMonitor;->isWidevinePluginBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string/jumbo v0, "Widevine plugin is blocked"

    .line 154
    const-string/jumbo v1, "ServiceErrorsHandler"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const v0, 0x7f090109

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DRM_FAILURE_MEDIADRM_WIDEVINE_PLUGIN_BLOCKED:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const-string/jumbo v0, "ServiceErrorsHandler"

    const-string/jumbo v1, "Widevine plugin is NOT blocked"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->buildNetflixConnectivityErrorMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static handleAppUpdateNeeded(Landroid/app/Activity;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 178
    new-instance v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 180
    if-eqz p1, :cond_1

    .line 181
    const v0, 0x7f090128

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setMessage(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 223
    :goto_0
    const v0, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 241
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 242
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 183
    :cond_1
    const-string/jumbo v2, "nflx_update_skipped"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 190
    new-instance v3, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/configuration/DeviceConfiguration;->getAppRecommendedVersion()I

    move-result v3

    .line 199
    if-eq v2, v3, :cond_0

    .line 204
    const v2, 0x7f0900a4

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setMessage(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 205
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setCancelable(Z)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 206
    const v0, 0x7f0900bd

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;

    invoke-direct {v2, v3, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;-><init>(ILandroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    goto :goto_0
.end method

.method public static handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 7

    .prologue
    const/16 v6, 0x12

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 48
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    .line 49
    const-string/jumbo v3, "ServiceErrorsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Handling manager response, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v3, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$10;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 138
    invoke-static {p0, v2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->buildNetflixConnectivityErrorMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 140
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 54
    goto :goto_0

    .line 57
    :pswitch_1
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleAppUpdateNeeded(Landroid/app/Activity;Z)Z

    move-result v0

    goto :goto_0

    .line 62
    :pswitch_2
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 63
    const-string/jumbo v2, "ServiceErrorsHandler"

    const-string/jumbo v3, "api version %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 64
    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 67
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    const-string/jumbo v0, "ServiceErrorsHandler"

    const-string/jumbo v2, "nf_config_locale manager == null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 70
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->shouldAlertForMissingLocale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getAlertMsgForMissingLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    invoke-static {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->wasPreviouslyAlerted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 79
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getAlertMsgForMissingLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideUnSupportedLanguageDialog(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 84
    :pswitch_3
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleAppUpdateNeeded(Landroid/app/Activity;Z)Z

    move-result v0

    goto :goto_0

    .line 87
    :pswitch_4
    const v1, 0x7f0901a8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_5
    const v1, 0x7f090103

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_6
    const v1, 0x7f09010a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0901c2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :pswitch_8
    const-string/jumbo v1, "ServiceErrorsHandler"

    const-string/jumbo v3, "Configuration can not be downloaded on first app start!"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p0, v2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->buildNetflixConnectivityErrorMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialogWithHelpButton(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 118
    :pswitch_9
    invoke-static {p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideLegacyCryptoCSPageDialog(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 121
    :pswitch_a
    const-string/jumbo v2, "ServiceErrorsHandler"

    const-string/jumbo v3, "Blacklisted device, failing back to Widevine L3, restart!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const v2, 0x7f090108

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :pswitch_b
    invoke-static {p0, v2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->buildNetflixConnectivityErrorMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideKillProcessDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :pswitch_c
    invoke-static {p0, v2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->getServiceTimeoutMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideKillProcessDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :pswitch_d
    const-string/jumbo v1, "ServiceErrorsHandler"

    const-string/jumbo v2, "Handled by CryptoErrorManager..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static provideDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 247
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$3;-><init>(Landroid/app/Activity;)V

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 256
    return-void
.end method

.method private static provideDialogWithHelpButton(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;

    invoke-direct {v2, p2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;-><init>(ZLandroid/app/Activity;)V

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09011f

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$5;-><init>(Landroid/app/Activity;)V

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 300
    return-void
.end method

.method private static provideKillProcessDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 260
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$4;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$4;-><init>(Landroid/app/Activity;)V

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 269
    return-void
.end method

.method private static provideLegacyCryptoCSPageDialog(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 334
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901bd

    .line 335
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901bc

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$9;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$9;-><init>(Landroid/app/Activity;)V

    .line 336
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$8;-><init>(Landroid/app/Activity;)V

    .line 343
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 349
    return-void
.end method

.method private static provideUnSupportedLanguageDialog(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 304
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 305
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 307
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 308
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 309
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;-><init>(Landroid/app/Activity;)V

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 326
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 330
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
