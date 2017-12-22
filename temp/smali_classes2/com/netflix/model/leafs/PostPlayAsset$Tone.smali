.class public final enum Lcom/netflix/model/leafs/PostPlayAsset$Tone;
.super Ljava/lang/Enum;
.source "PostPlayAsset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/model/leafs/PostPlayAsset$Tone;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/model/leafs/PostPlayAsset$Tone;

.field public static final enum DARK:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

.field public static final enum LIGHT:Lcom/netflix/model/leafs/PostPlayAsset$Tone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    const-string/jumbo v1, "DARK"

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/leafs/PostPlayAsset$Tone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->DARK:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    .line 26
    new-instance v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    const-string/jumbo v1, "LIGHT"

    invoke-direct {v0, v1, v3}, Lcom/netflix/model/leafs/PostPlayAsset$Tone;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->LIGHT:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    sget-object v1, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->DARK:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->LIGHT:Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->$VALUES:[Lcom/netflix/model/leafs/PostPlayAsset$Tone;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/PostPlayAsset$Tone;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    return-object v0
.end method

.method public static values()[Lcom/netflix/model/leafs/PostPlayAsset$Tone;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/model/leafs/PostPlayAsset$Tone;->$VALUES:[Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    invoke-virtual {v0}, [Lcom/netflix/model/leafs/PostPlayAsset$Tone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/leafs/PostPlayAsset$Tone;

    return-object v0
.end method
