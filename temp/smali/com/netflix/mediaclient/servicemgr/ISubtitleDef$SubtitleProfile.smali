.class public final enum Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
.super Ljava/lang/Enum;
.source "ISubtitleDef.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum ENHANCED:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum ENHANCED_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum SIMPLE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field public static final enum SIMPLE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;


# instance fields
.field private final mEncrypted:Z

.field private final mNccpCode:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string/jumbo v1, "SIMPLE"

    const-string/jumbo v4, "simplesdh"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 57
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string/jumbo v4, "ENHANCED"

    const-string/jumbo v7, "dfxp-ls-sdh"

    move v5, v9

    move v6, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 58
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string/jumbo v4, "IMAGE"

    const-string/jumbo v7, "nflx-cmisc"

    move v5, v10

    move v6, v10

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 59
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string/jumbo v4, "SIMPLE_ENC"

    const-string/jumbo v7, "simplesdh-enc"

    move v5, v11

    move v6, v11

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 60
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string/jumbo v4, "ENHANCED_ENC"

    const-string/jumbo v7, "dfxp-ls-sdh-enc"

    move v5, v12

    move v6, v12

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 61
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    const-string/jumbo v4, "IMAGE_ENC"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-string/jumbo v7, "nflx-cmisc-enc"

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    sput-object v3, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    aput-object v1, v0, v9

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    aput-object v1, v0, v10

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    aput-object v1, v0, v11

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->ENHANCED_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->IMAGE_ENC:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->mValue:I

    .line 65
    iput-object p4, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->mNccpCode:Ljava/lang/String;

    .line 66
    iput-boolean p5, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->mEncrypted:Z

    .line 67
    return-void
.end method

.method public static fromNccpCode(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 6

    .prologue
    .line 103
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->values()[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 108
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getNccpCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 113
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->SIMPLE:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method


# virtual methods
.method public getNccpCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->mNccpCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->mValue:I

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->mEncrypted:Z

    return v0
.end method
