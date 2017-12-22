.class Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;
.super Ljava/lang/Object;
.source "DownloadDiagnostics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_dl_diagnostics"

.field private static final TEST_ALL_DIALOGS:Z

.field private static TEST_DIALOG_COUNTER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->TEST_DIALOG_COUNTER:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static offlineEverWorkedOnThisDevice(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 187
    const-string/jumbo v0, "offline_ever_worked"

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 190
    :goto_0
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/MediaDrmUtils;->couldRecoverWideVine(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)Z

    move-result v0

    .line 191
    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 191
    goto :goto_1
.end method

.method static showDialog(Lcom/netflix/mediaclient/ui/settings/AboutActivity;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 3

    .prologue
    .line 53
    const-string/jumbo v0, "nf_dl_diagnostics"

    const-string/jumbo v1, "showDialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getOfflineUnavailableReason()Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    move-result-object v0

    .line 88
    :goto_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StorageStateUtils;->getDeviceExternalStorageInfo(Landroid/content/Context;)Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;->mExternalStorageInfoList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 92
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_NO_EXTERNAL_STORAGE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->getDiagnosticErrorMsg(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->showExternalStorageMissingDialog(Lcom/netflix/mediaclient/ui/settings/AboutActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 95
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;->isPermissionProblem(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->getDiagnosticErrorMsg(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->showStoragePermission(Lcom/netflix/mediaclient/ui/settings/AboutActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_5
    if-eqz v0, :cond_6

    .line 101
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->getDiagnosticErrorMsg(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->showDisabledFromConfigAgent(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_6
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->offlineEverWorkedOnThisDevice(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_MSL_CLIENT_DISABLED:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->getDiagnosticErrorMsg(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->showWideVineRecoverableDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_WIDE_VINE_UNRECOVERABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->getDiagnosticErrorMsg(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->showWideVineFatalErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showDialogWithOkButton(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$5;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 202
    return-void
.end method

.method private static showDisabledFromConfigAgent(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->showDialogWithOkButton(Landroid/app/Activity;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private static showExternalStorageMissingDialog(Lcom/netflix/mediaclient/ui/settings/AboutActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->showDialogWithOkButton(Landroid/app/Activity;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private static showStoragePermission(Lcom/netflix/mediaclient/ui/settings/AboutActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$2;-><init>(Lcom/netflix/mediaclient/ui/settings/AboutActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900bd

    new-instance v2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$1;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$1;-><init>()V

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 138
    return-void
.end method

.method private static showWideVineFatalErrorDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 173
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics;->showDialogWithOkButton(Landroid/app/Activity;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private static showWideVineRecoverableDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$4;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900bd

    new-instance v2, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$3;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/settings/DownloadDiagnostics$3;-><init>()V

    .line 156
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 162
    return-void
.end method
