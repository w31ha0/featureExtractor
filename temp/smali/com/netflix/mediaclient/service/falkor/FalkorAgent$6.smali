.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$6;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$6;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onIrisNotificationsMarkedAsRead(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 777
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$6;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0, v2, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$6;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->refreshIrisNotifications(ZZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    goto :goto_0
.end method
