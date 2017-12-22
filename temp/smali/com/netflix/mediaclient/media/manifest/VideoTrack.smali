.class public Lcom/netflix/mediaclient/media/manifest/VideoTrack;
.super Ljava/lang/Object;
.source "VideoTrack.java"


# instance fields
.field public new_track_id:Ljava/lang/String;

.field public streams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation
.end field

.field public track_id:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams:Ljava/util/List;

    return-void
.end method
