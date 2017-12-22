.class final enum Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;
.super Ljava/lang/Enum;
.source "PlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

.field public static final enum PAUSED_STATE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

.field public static final enum UNPAUSED_STATE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    const-string/jumbo v1, "PAUSED_STATE"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;->PAUSED_STATE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    const-string/jumbo v1, "UNPAUSED_STATE"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;->UNPAUSED_STATE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;->PAUSED_STATE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;->UNPAUSED_STATE:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;->state:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;

    return-object v0
.end method


# virtual methods
.method StateValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackState;->state:I

    return v0
.end method
