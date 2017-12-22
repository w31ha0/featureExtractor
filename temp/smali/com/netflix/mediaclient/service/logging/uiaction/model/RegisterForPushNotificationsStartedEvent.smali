.class public Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "RegisterForPushNotificationsStartedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "RegisterForPushNotifications"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "RegisterForPushNotifications"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method
