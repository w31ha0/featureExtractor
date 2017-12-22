.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/ObtainStreamingStat;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "ObtainStreamingStat.java"


# static fields
.field protected static final METHOD_GET_OBTAIN_STREAMING_STAT:Ljava/lang/String; = "obtainStreamingStat"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "obtainStreamingStat"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
