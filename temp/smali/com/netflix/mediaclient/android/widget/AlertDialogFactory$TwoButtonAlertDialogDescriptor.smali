.class public Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;
.super Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
.source "AlertDialogFactory.java"


# instance fields
.field negButtonHandler:Ljava/lang/Runnable;

.field negButtonLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 257
    iput-object p5, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;->negButtonLabel:Ljava/lang/String;

    .line 258
    iput-object p6, p0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;->negButtonHandler:Ljava/lang/Runnable;

    .line 259
    return-void
.end method
