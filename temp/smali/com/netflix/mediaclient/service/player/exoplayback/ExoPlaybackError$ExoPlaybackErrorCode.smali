.class public final enum Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;
.super Ljava/lang/Enum;
.source "ExoPlaybackError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum AUDIOTRACK_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum AUDIOTRACK_WRITE_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum AUDIO_LOAD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum CRYPTO_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum DECODER_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum MANIFEST_FAILURE:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum MPD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum NO_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum PLAYER_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum SESSION_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

.field public static final enum VIDEO_LOAD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->NO_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "AUDIO_LOAD_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->AUDIO_LOAD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "VIDEO_LOAD_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->VIDEO_LOAD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "AUDIOTRACK_INIT_ERROR"

    invoke-direct {v0, v1, v7, v7}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->AUDIOTRACK_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "AUDIOTRACK_WRITE_ERROR"

    invoke-direct {v0, v1, v8, v8}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->AUDIOTRACK_WRITE_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "DECODER_INIT_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->DECODER_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "CRYPTO_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->CRYPTO_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "PLAYER_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->PLAYER_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "SESSION_INIT_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->SESSION_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "MANIFEST_FAILURE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->MANIFEST_FAILURE:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    const-string/jumbo v1, "MPD_ERROR"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->MPD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    .line 10
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->NO_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->AUDIO_LOAD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->VIDEO_LOAD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->AUDIOTRACK_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->AUDIOTRACK_WRITE_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->DECODER_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->CRYPTO_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->PLAYER_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->SESSION_INIT_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->MANIFEST_FAILURE:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->MPD_ERROR:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->$VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->value:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->$VALUES:[Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlaybackError$ExoPlaybackErrorCode;->value:I

    return v0
.end method
