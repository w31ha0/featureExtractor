.class public Lcom/netflix/mediaclient/service/logging/suspend/model/ResumingSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "ResumingSessionEndedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "resuming"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "resuming"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;)V

    .line 26
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/ResumingSessionEndedEvent;->duration:J

    .line 27
    return-void
.end method
