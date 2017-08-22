.class public Lvpadn/ad;
.super Ljava/lang/Object;
.source "NativeVideoPlayerConstant.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "play_video"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pause_video"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mute_video"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "change_video_orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hide_video"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "show_video"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "get_video_total_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "seek_video"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "play_next_video"

    aput-object v2, v0, v1

    sput-object v0, Lvpadn/ad;->a:[Ljava/lang/String;

    return-void
.end method
