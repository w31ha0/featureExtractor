.class public Lcom/netflix/mediaclient/service/logging/suspend/model/BackgroundSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "BackgroundSessionStartedEvent.java"


# static fields
.field private static final SESSION_NAME:Ljava/lang/String; = "background"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "background"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
