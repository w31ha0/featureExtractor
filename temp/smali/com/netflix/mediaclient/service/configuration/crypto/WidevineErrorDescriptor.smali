.class public Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;
.super Ljava/lang/Object;
.source "WidevineErrorDescriptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/error/ErrorDescriptor;


# static fields
.field private static final TAG:Ljava/lang/String; = "ErrorAgent"


# instance fields
.field private mCause:Ljava/lang/Throwable;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

.field private mLink:Ljava/lang/String;

.field private mMessageId:I

.field private mOkTask:Ljava/lang/Runnable;

.field private mPriority:I

.field private mStatusCode:Lcom/netflix/mediaclient/StatusCode;

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Runnable;I)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 39
    const v4, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v3

    move v6, p4

    move-object v7, v3

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;ILjava/lang/Runnable;ILjava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const v0, 0x7fffffff

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mPriority:I

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    .line 45
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mCause:Ljava/lang/Throwable;

    .line 46
    iput p4, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mPriority:I

    .line 47
    iput-object p5, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mTask:Ljava/lang/Runnable;

    .line 48
    iput p6, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mMessageId:I

    .line 49
    iput-object p7, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mLink:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mOkTask:Ljava/lang/Runnable;

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->createData()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createData()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "ErrorAgent"

    const-string/jumbo v1, "Required to display error dialog without status code!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mMessageId:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mStatusCode:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->getMessage(ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v2

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mLink:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 87
    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mOkTask:Ljava/lang/Runnable;

    .line 88
    if-nez v4, :cond_1

    .line 89
    new-instance v4, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor$1;-><init>(Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;)V

    .line 97
    :cond_1
    if-eqz v0, :cond_2

    .line 98
    new-instance v6, Lcom/netflix/mediaclient/util/LaunchBrowser;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1, v0}, Lcom/netflix/mediaclient/util/LaunchBrowser;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const-string/jumbo v1, ""

    iget-object v5, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    const v7, 0x7f090100

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    goto :goto_0
.end method

.method private getMessage(ILcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f090112

    .line 114
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    if-eqz p2, :cond_2

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_1
    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 131
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/crypto/WidevineErrorDescriptor;->mPriority:I

    return v0
.end method

.method public shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method
