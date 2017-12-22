.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/Stop;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "Stop.java"


# static fields
.field protected static final METHOD_STOP:Ljava/lang/String; = "stop"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "stop"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
