.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;
.super Landroid/content/BroadcastReceiver;
.source "VideoDetailsViewGroup.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 836
    if-nez p2, :cond_1

    .line 837
    const-string/jumbo v0, "VideoDetailsViewGroup"

    const-string/jumbo v1, "Received null intent - ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    const-string/jumbo v0, "extra_video_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->access$000(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    if-eqz v0, :cond_0

    .line 845
    const-string/jumbo v0, "extra_user_thumb_rating"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->asThumbsRating(I)I

    move-result v0

    .line 846
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setRating(I)V

    .line 847
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->access$100(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;IZ)V

    goto :goto_0
.end method
