.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/ObtainPlaybackStat;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "ObtainPlaybackStat.java"


# static fields
.field protected static final METHOD_GET_OBTAIN_PLAYBACK_STAT:Ljava/lang/String; = "obtainPlaybackStat"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "obtainPlaybackStat"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
