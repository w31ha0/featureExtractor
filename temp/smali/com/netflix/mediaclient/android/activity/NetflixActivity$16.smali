.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;
.super Ljava/lang/Object;
.source "NetflixActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 2658
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixApplication()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity;->createStartIntentSingleTop(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->startActivity(Landroid/content/Intent;)V

    .line 2662
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$16;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finish()V

    .line 2663
    return-void
.end method
