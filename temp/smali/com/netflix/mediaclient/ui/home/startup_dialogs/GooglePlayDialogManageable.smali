.class public Lcom/netflix/mediaclient/ui/home/startup_dialogs/GooglePlayDialogManageable;
.super Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;
.source "GooglePlayDialogManageable.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManageable;-><init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/DialogManager;)V

    .line 25
    return-void
.end method

.method private shouldDisplayGooglePlayServicesDialog()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/GooglePlayDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    .line 59
    const-string/jumbo v4, "DialogManager"

    const-string/jumbo v5, "Google Play status %d: "

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 61
    if-nez v3, :cond_0

    .line 62
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Success!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return v0

    .line 65
    :cond_0
    if-eq v1, v3, :cond_1

    const/16 v4, 0x9

    if-ne v4, v3, :cond_2

    .line 66
    :cond_1
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Device is not Google certified, skip"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_2
    const-string/jumbo v4, "DialogManager"

    const-string/jumbo v5, "Device is Google certified, problem with Google Play Services"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    const-string/jumbo v0, "DialogManager"

    const-string/jumbo v2, "Error is recoverable, display dialog"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_3
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Error is NOT recoverable, skip"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public shouldShow()Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/GooglePlayDialogManageable;->shouldDisplayGooglePlayServicesDialog()Z

    move-result v0

    return v0
.end method

.method public show()Z
    .locals 4

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/GooglePlayDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/GooglePlayDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;II)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string/jumbo v1, "DialogManager"

    const-string/jumbo v2, "Failed to display Google play services error dialog!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method
