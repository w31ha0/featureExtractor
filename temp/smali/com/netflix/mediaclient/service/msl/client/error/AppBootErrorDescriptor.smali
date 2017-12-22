.class Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptor;
.super Ljava/lang/Object;
.source "AppBootErrorDescriptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/error/ErrorDescriptor;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_appboot_error"


# instance fields
.field private mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

.field private mPriority:I


# direct methods
.method constructor <init>(ILcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptor;->mPriority:I

    .line 23
    iput-object p2, p0, Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    .line 24
    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptor;-><init>(ILcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getBackgroundTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptor;->mData:Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptor;->mPriority:I

    return v0
.end method

.method public shouldReportToUserAsDialog(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
