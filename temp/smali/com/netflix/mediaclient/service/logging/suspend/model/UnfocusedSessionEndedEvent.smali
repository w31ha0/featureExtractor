.class public Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "UnfocusedSessionEndedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "unfocused"

.field private static final TAG:Ljava/lang/String; = "nf_log"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "unfocused"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;)V

    .line 16
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionEndedEvent;->duration:J

    .line 17
    return-void
.end method
