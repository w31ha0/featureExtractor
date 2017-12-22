.class public Lcom/netflix/mediaclient/media/manifest/Stream;
.super Ljava/lang/Object;
.source "Stream.java"


# instance fields
.field public bitrate:I

.field public downloadable_id:Ljava/lang/String;

.field public isDrm:Z

.field public new_stream_id:Ljava/lang/String;

.field public size:Ljava/lang/Long;

.field public trackType:Ljava/lang/String;

.field public type:I

.field public urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/Url;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/manifest/Stream;->urls:Ljava/util/List;

    return-void
.end method
