.class public final enum Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;
.super Ljava/lang/Enum;
.source "ISubtitleDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

.field public static final enum badMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

.field public static final enum dnsResolution:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

.field public static final enum download:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

.field public static final enum parsing:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

.field public static final enum parsingCachedMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const-string/jumbo v1, "download"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->download:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const-string/jumbo v1, "dnsResolution"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->dnsResolution:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const-string/jumbo v1, "parsing"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->parsing:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const-string/jumbo v1, "parsingCachedMasterIndex"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->parsingCachedMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    .line 125
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    const-string/jumbo v1, "badMasterIndex"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->badMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    .line 120
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->download:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->dnsResolution:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->parsing:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->parsingCachedMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->badMasterIndex:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

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
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;

    return-object v0
.end method
