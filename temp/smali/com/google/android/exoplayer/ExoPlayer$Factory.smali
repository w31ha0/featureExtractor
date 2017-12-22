.class public final Lcom/google/android/exoplayer/ExoPlayer$Factory;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# direct methods
.method public static newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayerImpl;-><init>(III)V

    return-object v0
.end method
