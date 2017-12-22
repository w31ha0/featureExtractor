.class public Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;
.super Ljava/lang/Object;
.source "VoipErrorDialogDescriptorFactory.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ErrorManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static getHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 7

    .prologue
    .line 55
    new-instance v4, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory$1;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    const v1, 0x7f090188

    .line 69
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f0900bd

    .line 71
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 74
    new-instance v1, Lcom/netflix/mediaclient/service/voip/VoipErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/voip/VoipErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v1
.end method

.method public static getHandlerForCallFailed(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 2

    .prologue
    .line 38
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    const v1, 0x7f0900d2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {p0, v1, v0, p1}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerForCallFailed(Landroid/content/Context;Ljava/lang/String;I)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 3

    .prologue
    .line 31
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    const v1, 0x7f0900d2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerForEngineFailed(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900d1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerForNoLineAvailable(Landroid/content/Context;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 3

    .prologue
    .line 44
    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    const v1, 0x7f0900d2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v0

    return-object v0
.end method
