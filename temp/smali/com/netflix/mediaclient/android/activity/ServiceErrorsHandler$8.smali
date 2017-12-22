.class final Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$8;
.super Ljava/lang/Object;
.source "ServiceErrorsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$8;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 347
    return-void
.end method
