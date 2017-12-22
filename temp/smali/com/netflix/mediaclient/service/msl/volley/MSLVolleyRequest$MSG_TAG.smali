.class public final enum Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;
.super Ljava/lang/Enum;
.source "MSLVolleyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum BROWSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum BROWSE_LOG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum BROWSE_PREFETCH:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum CONFIG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum LOG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum LOG_ADV_ID:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum LOG_BLOB:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum LOG_CL:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum LOG_PRESENTATION:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum PDS_EVENT:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum PLAY_LICENSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum PLAY_MANIFEST:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum PLAY_OTHER:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum PLAY_PREFETCH_LICENSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

.field public static final enum PLAY_PREFETCH_MANIFEST:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 588
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "PLAY_MANIFEST"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_MANIFEST:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 589
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "PLAY_LICENSE"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_LICENSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 590
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "PLAY_PREFETCH_MANIFEST"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_PREFETCH_MANIFEST:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 591
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "PLAY_PREFETCH_LICENSE"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_PREFETCH_LICENSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 592
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "PLAY_OTHER"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_OTHER:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 593
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "BROWSE_PREFETCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->BROWSE_PREFETCH:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 594
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "BROWSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->BROWSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 595
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "BROWSE_LOG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->BROWSE_LOG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 596
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "CONFIG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->CONFIG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 597
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "PDS_EVENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PDS_EVENT:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 598
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "LOG_CL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_CL:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 599
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "LOG_ADV_ID"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_ADV_ID:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 600
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "LOG_PRESENTATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_PRESENTATION:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 601
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "LOG_BLOB"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_BLOB:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 602
    new-instance v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    const-string/jumbo v1, "LOG"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    .line 587
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    sget-object v1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_MANIFEST:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_LICENSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_PREFETCH_MANIFEST:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_PREFETCH_LICENSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PLAY_OTHER:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->BROWSE_PREFETCH:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->BROWSE:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->BROWSE_LOG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->CONFIG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->PDS_EVENT:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_CL:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_ADV_ID:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_PRESENTATION:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_BLOB:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->$VALUES:[Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

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
    .line 587
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;
    .locals 1

    .prologue
    .line 587
    const-class v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;
    .locals 1

    .prologue
    .line 587
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->$VALUES:[Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method
