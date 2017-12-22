.class public Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "AccountSettingsUnavailableAlertDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    return-void
.end method

.method protected static createAccountSettingsUnavailableAlertDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;-><init>()V

    .line 20
    const/4 v1, 0x1

    const v2, 0x7f0b0117

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;->setStyle(II)V

    .line 21
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog$1;-><init>(Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 34
    const v1, 0x7f090066

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/home/AccountSettingsUnavailableAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    return-object v0
.end method
