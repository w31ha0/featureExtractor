.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/Pause;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "Pause.java"


# static fields
.field protected static final METHOD_PAUSE:Ljava/lang/String; = "pause"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "pause"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
