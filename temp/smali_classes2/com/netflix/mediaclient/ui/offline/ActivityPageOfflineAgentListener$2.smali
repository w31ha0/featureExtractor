.class Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;
.super Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;
.source "ActivityPageOfflineAgentListener.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;->this$0:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/netflix/android/widgetry/buffet/BuffetBar;I)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    if-nez p2, :cond_1

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;->this$0:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->access$100(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;->this$0:Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->access$202(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;)Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    goto :goto_0
.end method
