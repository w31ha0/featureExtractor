.class public Lcom/netflix/mediaclient/service/logging/suspend/model/UnfocusedSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "UnfocusedSessionStartedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "unfocused"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "unfocused"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method
