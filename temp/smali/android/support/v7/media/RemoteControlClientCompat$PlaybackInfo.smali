.class public final Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# instance fields
.field public playbackStream:I

.field public playbackType:I

.field public volume:I

.field public volumeHandling:I

.field public volumeMax:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    return-void
.end method
