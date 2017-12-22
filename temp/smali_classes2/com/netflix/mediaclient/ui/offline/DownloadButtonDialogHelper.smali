.class public Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;
.super Ljava/lang/Object;
.source "DownloadButtonDialogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->getOfflineAgent(Landroid/content/Context;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    return-object v0
.end method

.method public static createAlreadyRequestedDownloadDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 343
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09020e

    .line 344
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$17;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$17;-><init>()V

    .line 345
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 352
    return-object v0
.end method

.method public static createDownloadDeleteAllDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 299
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09020d

    .line 300
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09020c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d4

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$14;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$14;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    .line 302
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900bd

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$13;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$13;-><init>()V

    .line 309
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method static createDownloadFailedDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 284
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901ec

    .line 285
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901eb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900bd

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$12;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$12;-><init>()V

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method static createDownloadingMenu(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Z)Landroid/widget/PopupMenu;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 82
    new-instance v1, Landroid/widget/PopupMenu;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->getPopupMenuStyle(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 83
    const/high16 v2, 0x7f110000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 84
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f1003f3

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 85
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f1003f6

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 86
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f1003f7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->isInMyDownloadsActivity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 87
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 107
    return-object v1

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createNoInternetDialog(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 204
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901fb

    .line 205
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901fa

    .line 206
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$7;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$7;-><init>()V

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 214
    if-eqz p2, :cond_0

    .line 215
    const v1, 0x7f0901d3

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$8;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$8;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 228
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static createNoStorageDialog(Landroid/content/Context;Z)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 171
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const v1, 0x7f0901fc

    .line 174
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0901da

    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$5;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$5;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900bd

    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$4;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$4;-><init>()V

    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 199
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    const v1, 0x7f0901fd

    .line 191
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090156

    new-instance v3, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$6;

    invoke-direct {v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$6;-><init>()V

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method static createNoWifiDialog(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090200

    .line 234
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901ff

    .line 235
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$10;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$10;-><init>()V

    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901d7

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$9;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 254
    if-eqz p3, :cond_0

    .line 255
    const v1, 0x7f0901d3

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;

    invoke-direct {v2, p0, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$11;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 268
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static createNotAvailableDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 321
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090202

    .line 322
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090201

    .line 323
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090156

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$16;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$16;-><init>()V

    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e1

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$15;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$15;-><init>(Landroid/content/Context;)V

    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 338
    return-object v0
.end method

.method static createPausedMenu(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZZ)Landroid/widget/PopupMenu;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 116
    new-instance v1, Landroid/widget/PopupMenu;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->getPopupMenuStyle(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 117
    const/high16 v2, 0x7f110000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 118
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f1003f5

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f1003f6

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f1003f7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->isInMyDownloadsActivity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 153
    return-object v1

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static createWatchDeleteDialog(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/widget/PopupMenu;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 47
    new-instance v1, Landroid/widget/PopupMenu;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->getPopupMenuStyle(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 48
    const/high16 v2, 0x7f110000

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 49
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f1003f2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 50
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f1003f4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 51
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f1003f7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz p4, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->isInMyDownloadsActivity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;

    invoke-direct {v0, p0, p2, p3, p5}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 77
    return-object v1

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getOfflineAgent(Landroid/content/Context;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;
    .locals 1

    .prologue
    .line 272
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 273
    check-cast p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 274
    invoke-static {p0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getServiceManager(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPopupMenuStyle(Landroid/content/Context;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0199

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0193

    goto :goto_0
.end method

.method private static isInMyDownloadsActivity(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
