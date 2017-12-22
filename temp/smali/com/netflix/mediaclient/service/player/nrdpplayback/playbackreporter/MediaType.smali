.class final enum Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

.field public static final enum AUDIO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

.field public static final enum TEXT_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

.field public static final enum UNKNOWN_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

.field public static final enum VIDEO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 7
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    const-string/jumbo v2, "UNKNOWN_STREAM"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->UNKNOWN_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    .line 8
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    const-string/jumbo v2, "AUDIO_STREAM"

    invoke-direct {v1, v2, v4, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->AUDIO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    .line 9
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    const-string/jumbo v2, "VIDEO_STREAM"

    invoke-direct {v1, v2, v5, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->VIDEO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    .line 10
    new-instance v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    const-string/jumbo v2, "TEXT_STREAM"

    invoke-direct {v1, v2, v6, v5}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->TEXT_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    .line 6
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->UNKNOWN_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    aput-object v2, v1, v0

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->AUDIO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->VIDEO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->TEXT_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    aput-object v2, v1, v6

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->map:Ljava/util/Map;

    .line 15
    invoke-static {}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->values()[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 16
    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->map:Ljava/util/Map;

    iget v5, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->type:I

    .line 22
    return-void
.end method

.method public static valueOf(I)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->map:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    return-object v0
.end method
