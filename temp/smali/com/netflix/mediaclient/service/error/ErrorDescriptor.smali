.class public interface abstract Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
.super Ljava/lang/Object;
.source "ErrorDescriptor.java"


# virtual methods
.method public abstract getBackgroundTask()Ljava/lang/Runnable;
.end method

.method public abstract getData()Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;
.end method

.method public abstract getPriority()I
.end method

.method public abstract shouldReportToUserAsDialog(Landroid/app/Activity;)Z
.end method
