.class final Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;
.super Ljava/lang/Object;
.source "ServiceErrorsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$killService:Z


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;->val$killService:Z

    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;->val$killService:Z

    if-eqz v0, :cond_0

    .line 279
    const-string/jumbo v0, "ServiceErrorsHandler"

    const-string/jumbo v1, "killing service"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->forceStop(Landroid/content/Context;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
