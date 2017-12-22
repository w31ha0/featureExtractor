.class final enum Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;
.super Ljava/lang/Enum;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

.field public static final enum AVC:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

.field public static final enum HEVC:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

.field public static final enum VP9:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;


# instance fields
.field private fhdLevel:I

.field private hdLevel:I

.field private interestedProfile:I

.field private lowestLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const-string/jumbo v1, "AVC"

    const/16 v4, 0x800

    const/16 v5, 0x200

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->AVC:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 36
    new-instance v4, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const-string/jumbo v5, "VP9"

    const/16 v8, 0x40

    const/16 v9, 0x20

    move v7, v6

    move v10, v6

    invoke-direct/range {v4 .. v10}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->VP9:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 40
    new-instance v7, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    const-string/jumbo v8, "HEVC"

    const/16 v11, 0x400

    const/16 v12, 0x100

    move v9, v3

    move v10, v6

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->HEVC:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->AVC:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->VP9:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->HEVC:Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->$VALUES:[Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->interestedProfile:I

    .line 50
    iput p4, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->fhdLevel:I

    .line 51
    iput p5, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->hdLevel:I

    .line 52
    iput p6, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->lowestLevel:I

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->$VALUES:[Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    return-object v0
.end method


# virtual methods
.method getFhdLevel()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->fhdLevel:I

    return v0
.end method

.method getHdLevel()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->hdLevel:I

    return v0
.end method

.method getInterestedProfile()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->interestedProfile:I

    return v0
.end method

.method getLowestLevel()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->lowestLevel:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
