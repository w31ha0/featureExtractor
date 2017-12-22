.class public Lcom/netflix/mediaclient/ui/profiles/DeleteProfileAlertDlg;
.super Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
.source "DeleteProfileAlertDlg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;-><init>()V

    return-void
.end method

.method protected static createDeleteProfileDialog(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/profiles/DeleteProfileAlertDlg;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Lcom/netflix/mediaclient/ui/profiles/DeleteProfileAlertDlg;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/profiles/DeleteProfileAlertDlg;-><init>()V

    .line 17
    const/4 v1, 0x1

    const v2, 0x7f0b0117

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/profiles/DeleteProfileAlertDlg;->setStyle(II)V

    .line 19
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCancel(Landroid/content/DialogInterface;)V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/DeleteProfileAlertDlg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 42
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, -0x2

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 45
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/DeleteProfileAlertDlg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/profiles/DeleteProfileAlertDlg;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    .line 28
    const v2, 0x7f0900bd

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 29
    const v2, 0x7f090241

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 30
    const v0, 0x7f090242

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/profiles/DeleteProfileAlertDlg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    return-object v0
.end method
