.class public final Lcom/netflix/mediaclient/javabridge/invoke/player/Close;
.super Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;
.source "Close.java"


# static fields
.field protected static final METHOD_CLOSE:Ljava/lang/String; = "close"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "close"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/invoke/player/PlayerInvoke;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
