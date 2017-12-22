.class public final enum Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;
.super Ljava/lang/Enum;
.source "StreamingPlaybackErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum LICENSE_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum LICENSE_SESSION_EXCEPTION_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum LICENSE_SESSION_UNAVAILABLE_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum LICENSE_STORE_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum MANIFEST_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum MANIFEST_PROCESS_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum MEDIA_INITIALIZATION_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum MEDIA_PLAYBACK_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

.field public static final enum NO_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;


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

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->NO_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "MANIFEST_FETCH_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "MANIFEST_PROCESS_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_PROCESS_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "MANIFEST_CACHE_EXTRACT_ERROR"

    invoke-direct {v0, v1, v7, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "LICENSE_SESSION_UNAVAILABLE_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_SESSION_UNAVAILABLE_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "LICENSE_FETCH_ERROR"

    const/4 v2, 0x5

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "LICENSE_STORE_ERROR"

    const/4 v2, 0x6

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_STORE_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "LICENSE_SESSION_EXCEPTION_ERROR"

    const/4 v2, 0x7

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_SESSION_EXCEPTION_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "MEDIA_INITIALIZATION_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MEDIA_INITIALIZATION_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    const-string/jumbo v1, "MEDIA_PLAYBACK_ERROR"

    const/16 v2, 0x9

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MEDIA_PLAYBACK_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->NO_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_PROCESS_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MANIFEST_CACHE_EXTRACT_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_SESSION_UNAVAILABLE_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_FETCH_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_STORE_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->LICENSE_SESSION_EXCEPTION_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MEDIA_INITIALIZATION_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->MEDIA_PLAYBACK_ERROR:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->value:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->$VALUES:[Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->value:I

    return v0
.end method
