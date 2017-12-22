.class final Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;
.super Ljava/lang/Object;
.source "ServiceErrorsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 226
    const-string/jumbo v0, "ServiceErrorsHandler"

    const-string/jumbo v1, "User clicked Ok on prompt to update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AppStoreHelper;->getUpdateSourceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    :try_start_1
    const-string/jumbo v1, "ServiceErrorsHandler"

    const-string/jumbo v2, "Failed to start store Activity!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    throw v0
.end method
