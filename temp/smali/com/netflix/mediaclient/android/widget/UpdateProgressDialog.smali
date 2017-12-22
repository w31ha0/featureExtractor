.class public Lcom/netflix/mediaclient/android/widget/UpdateProgressDialog;
.super Landroid/app/ProgressDialog;
.source "UpdateProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/UpdateProgressDialog;->setCancelable(Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/UpdateProgressDialog;->setCancelable(Z)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/UpdateProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
