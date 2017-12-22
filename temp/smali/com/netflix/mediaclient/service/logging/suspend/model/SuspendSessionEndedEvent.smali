.class public Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "SuspendSessionEndedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "suspend"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "suspend"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;)V

    .line 15
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionEndedEvent;->duration:J

    .line 16
    return-void
.end method
