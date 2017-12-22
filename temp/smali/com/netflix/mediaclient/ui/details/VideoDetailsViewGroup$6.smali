.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;
.super Landroid/content/BroadcastReceiver;
.source "VideoDetailsViewGroup.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 856
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->getNetflixActivitySafely(Landroid/view/View;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 857
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateBadges(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 860
    :cond_0
    return-void
.end method
