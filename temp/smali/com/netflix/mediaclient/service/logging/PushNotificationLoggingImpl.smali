.class public Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;
.super Ljava/lang/Object;
.source "PushNotificationLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log_push"


# instance fields
.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public fireEvent(Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging$PushNotificationDiscreteEvent;)V
    .locals 1

    .prologue
    .line 27
    instance-of v0, p1, Lcom/netflix/mediaclient/service/logging/client/model/Event;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    check-cast p1, Lcom/netflix/mediaclient/service/logging/client/model/Event;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 34
    :cond_0
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_PUSH_NOTIFICATION_PRESENTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const-string/jumbo v0, "nf_log_push"

    const-string/jumbo v1, "PUSH_NOTIFICATION_PRESENTED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationPresentedEvent;

    .line 43
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;->fireEvent(Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging$PushNotificationDiscreteEvent;)V

    .line 61
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 45
    :cond_0
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_PUSH_NOTIFICATION_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string/jumbo v0, "nf_log_push"

    const-string/jumbo v1, "PUSH_NOTIFICATION_RECEIVED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;->fireEvent(Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging$PushNotificationDiscreteEvent;)V

    goto :goto_0

    .line 50
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.LOG_PUSH_NOTIFICATION_RESOLVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const-string/jumbo v0, "nf_log_push"

    const-string/jumbo v1, "PUSH_NOTIFICATION_RESOLVED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationResolvedEvent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/PushNotificationLoggingImpl;->fireEvent(Lcom/netflix/mediaclient/servicemgr/PushNotificationLogging$PushNotificationDiscreteEvent;)V

    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
