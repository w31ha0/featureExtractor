.class public final enum Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;
.super Ljava/lang/Enum;
.source "SegmentEncryptionInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

.field public static final enum AES_CBC:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

.field public static final enum AES_CTR:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

.field public static final enum NONE:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

.field public static final enum RESERVED:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    .line 213
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    const-string/jumbo v1, "AES_CTR"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CTR:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    .line 214
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    const-string/jumbo v1, "AES_CBC"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CBC:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    .line 215
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    const-string/jumbo v1, "RESERVED"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->RESERVED:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    .line 211
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CTR:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CBC:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->RESERVED:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;
    .locals 1

    .prologue
    .line 211
    const-class v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->$VALUES:[Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    return-object v0
.end method
