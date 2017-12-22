.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/GetBufferRange;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "GetBufferRange.java"


# static fields
.field protected static final METHOD_GET_BUFFER_RANGE:Ljava/lang/String; = "getBufferRange"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "getBufferRange"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
