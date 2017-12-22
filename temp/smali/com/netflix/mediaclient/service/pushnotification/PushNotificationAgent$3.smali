.class Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;
.super Landroid/content/BroadcastReceiver;
.source "PushNotificationAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 651
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 652
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "onLogin"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$100(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "onLogout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$200(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Landroid/content/Intent;)Lcom/netflix/mediaclient/service/logging/UserData;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$300(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;Lcom/netflix/mediaclient/service/logging/UserData;)V

    goto :goto_0

    .line 661
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 662
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "optIn"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$400(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$500(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0

    .line 664
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_NOTIFICATION_OPTOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "optOut"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent$3;->this$0:Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$400(Landroid/content/Intent;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;->access$500(Lcom/netflix/mediaclient/service/pushnotification/PushNotificationAgent;ZLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method
