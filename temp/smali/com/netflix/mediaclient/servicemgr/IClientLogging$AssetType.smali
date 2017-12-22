.class public final enum Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;
.super Ljava/lang/Enum;
.source "IClientLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum bif:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum heroImage:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum imageSubtitlesMasterIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum imageSubtitlesSegment:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum imageSubtitlesSegmentIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum interactiveContent:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum motionBillboard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum subtitles:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

.field public static final enum wordPartyVideoCard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 267
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "boxArt"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 268
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "merchStill"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 269
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "bif"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->bif:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 270
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "heroImage"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->heroImage:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 271
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "profileAvatar"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 272
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "subtitles"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->subtitles:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 273
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "imageSubtitlesMasterIndex"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesMasterIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 274
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "imageSubtitlesSegmentIndex"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegmentIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 275
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "imageSubtitlesSegment"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegment:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 276
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "motionBillboard"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->motionBillboard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 277
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "interactiveContent"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->interactiveContent:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 278
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    const-string/jumbo v1, "wordPartyVideoCard"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->wordPartyVideoCard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 266
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->bif:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->heroImage:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->subtitles:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesMasterIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegmentIndex:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->imageSubtitlesSegment:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->motionBillboard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->interactiveContent:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->wordPartyVideoCard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

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
    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;
    .locals 1

    .prologue
    .line 266
    const-class v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    return-object v0
.end method
