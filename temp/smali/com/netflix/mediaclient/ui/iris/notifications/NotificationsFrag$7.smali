.class Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$7;
.super Landroid/content/BroadcastReceiver;
.source "NotificationsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/netflix/mediaclient/util/IrisUtils;->handleNotificationsUpdateReceiver(Landroid/content/Intent;Ljava/lang/String;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$700(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)V

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$602(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z

    goto :goto_0
.end method
