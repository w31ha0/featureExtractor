.class final Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;
.super Ljava/lang/Object;
.source "ServiceErrorsHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$minRecommendedVersion:I


# direct methods
.method constructor <init>(ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 206
    iput p1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;->val$minRecommendedVersion:I

    iput-object p2, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;->val$activity:Landroid/app/Activity;

    const-string/jumbo v1, "nflx_update_skipped"

    iget v2, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;->val$minRecommendedVersion:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;->val$activity:Landroid/app/Activity;

    const-string/jumbo v2, "ServiceErrorsHandler"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/launch/RelaunchActivity;->createStartIntent(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 219
    return-void
.end method
