.class Lcom/netflix/mediaclient/ui/home/HomeActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/HomeActivity;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 829
    const-string/jumbo v0, "HomeActivity"

    invoke-static {p2, v0}, Lcom/netflix/mediaclient/util/IrisUtils;->handleNotificationsUpdateReceiver(Landroid/content/Intent;Ljava/lang/String;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    move-result-object v0

    .line 830
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$000(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$002(Lcom/netflix/mediaclient/ui/home/HomeActivity;Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    .line 836
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/HomeActivity$7;->this$0:Lcom/netflix/mediaclient/ui/home/HomeActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->access$000(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setSandwichIcon(Z)V

    .line 838
    :cond_0
    return-void

    .line 836
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
