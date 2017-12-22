.class public final enum Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;
.super Ljava/lang/Enum;
.source "ISubtitleDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

.field public static final enum BINARY_IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

.field public static final enum DATA_JSON:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

.field public static final enum DATA_XML:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;


# instance fields
.field protected mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    const-string/jumbo v1, "DATA_XML"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->DATA_XML:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    const-string/jumbo v1, "DATA_JSON"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->DATA_JSON:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    const-string/jumbo v1, "BINARY_IMAGE"

    invoke-direct {v0, v1, v3, v5}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->BINARY_IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    .line 27
    new-array v0, v5, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->DATA_XML:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->DATA_JSON:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->BINARY_IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->mValue:I

    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleOutputMode;->mValue:I

    return v0
.end method
