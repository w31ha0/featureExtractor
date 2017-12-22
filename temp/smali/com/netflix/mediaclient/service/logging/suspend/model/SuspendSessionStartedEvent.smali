.class public Lcom/netflix/mediaclient/service/logging/suspend/model/SuspendSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "SuspendSessionStartedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "suspend"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "suspend"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
