.class public Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;
.super Ljava/lang/Object;
.source "MdxErrorHandler.java"


# static fields
.field private static final TYPE_MDX:Ljava/lang/String; = "mdx"

.field private static final kbHelpUrl_16001:Ljava/lang/String; = "https://help.netflix.com/en/node/12407"

.field private static final kbHelpUrl_16003:Ljava/lang/String; = "https://help.netflix.com/en/node/13590"


# instance fields
.field private final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private kblaunch_16001:Landroid/content/DialogInterface$OnClickListener;

.field private kblaunch_16003:Landroid/content/DialogInterface$OnClickListener;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->kblaunch_16001:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler$2;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->kblaunch_16003:Landroid/content/DialogInterface$OnClickListener;

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->tag:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->tag:Ljava/lang/String;

    return-object v0
.end method

.method private getDialogBuilder(ILjava/lang/String;)Landroid/support/v7/app/AlertDialog$Builder;
    .locals 5

    .prologue
    const v4, 0x7f090100

    const/4 v3, 0x0

    const v2, 0x7f090156

    .line 104
    sparse-switch p1, :sswitch_data_0

    .line 120
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->getErrorMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 109
    :sswitch_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->getErrorMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->kblaunch_16001:Landroid/content/DialogInterface$OnClickListener;

    .line 112
    invoke-virtual {v0, v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    goto :goto_0

    .line 115
    :sswitch_1
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->getErrorMessage(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->kblaunch_16003:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    invoke-virtual {v0, v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method private getErrorMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    sparse-switch p1, :sswitch_data_0

    .line 173
    :goto_0
    :sswitch_0
    return-object p2

    .line 155
    :sswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 157
    :sswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 159
    :sswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 161
    :sswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 164
    :sswitch_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 166
    :sswitch_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6a -> :sswitch_5
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_6
        0x12c -> :sswitch_0
    .end sparse-switch
.end method

.method private handleError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->getDialogBuilder(ILjava/lang/String;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/support/v7/app/AlertDialog$Builder;)Landroid/app/Dialog;

    .line 73
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->reportErrorAsLogblob(I)V

    .line 74
    return-void
.end method

.method private reportErrorAsLogblob(I)V
    .locals 5

    .prologue
    .line 78
    packed-switch p1, :pswitch_data_0

    .line 101
    :goto_0
    :pswitch_0
    return-void

    .line 80
    :pswitch_1
    const-string/jumbo v0, "16001"

    .line 96
    :goto_1
    :try_start_0
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/LogArguments;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v3, "mdx"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/netflix/mediaclient/servicemgr/LogArguments;-><init>(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getLogblobLogging()Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/LogArguments;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to log error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :pswitch_2
    const-string/jumbo v0, "16002"

    goto :goto_1

    .line 86
    :pswitch_3
    const-string/jumbo v0, "16003"

    goto :goto_1

    .line 89
    :pswitch_4
    const-string/jumbo v0, "16004"

    goto :goto_1

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private sendToast(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method private shouldShowErrorMessage()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;

    return v0
.end method


# virtual methods
.method public handleMdxError(ILjava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 41
    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "Displaying error dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->handleError(ILjava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    if-lt p1, v1, :cond_3

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_3

    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->shouldShowErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "Showing toast msg"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->sendToast(ILjava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "Not MDX related activity, do not show toast"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->shouldShowErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "Showing toast msg"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->sendToast(ILjava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxErrorHandler;->tag:Ljava/lang/String;

    const-string/jumbo v1, "Not MDX related activity, do not show toast"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
