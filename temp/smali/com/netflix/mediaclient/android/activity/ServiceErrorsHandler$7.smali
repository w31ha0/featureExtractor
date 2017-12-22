.class final Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;
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
    .line 310
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->setAlertedLanguage(Landroid/content/Context;)V

    .line 317
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;->val$activity:Landroid/app/Activity;

    const-string/jumbo v2, "ServiceErrorsHandler"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 320
    :cond_0
    return-void
.end method
