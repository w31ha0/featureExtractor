.class public final enum Lcom/netflix/msl/MslConstants$SignatureAlgo;
.super Ljava/lang/Enum;
.source "MslConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/MslConstants$SignatureAlgo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/MslConstants$SignatureAlgo;

.field public static final enum AESCmac:Lcom/netflix/msl/MslConstants$SignatureAlgo;

.field public static final enum HmacSHA256:Lcom/netflix/msl/MslConstants$SignatureAlgo;

.field public static final enum SHA256withRSA:Lcom/netflix/msl/MslConstants$SignatureAlgo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    new-instance v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    const-string/jumbo v1, "HmacSHA256"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslConstants$SignatureAlgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->HmacSHA256:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 153
    new-instance v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    const-string/jumbo v1, "SHA256withRSA"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslConstants$SignatureAlgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->SHA256withRSA:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 155
    new-instance v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    const-string/jumbo v1, "AESCmac"

    invoke-direct {v0, v1, v4}, Lcom/netflix/msl/MslConstants$SignatureAlgo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->AESCmac:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    .line 149
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/msl/MslConstants$SignatureAlgo;

    sget-object v1, Lcom/netflix/msl/MslConstants$SignatureAlgo;->HmacSHA256:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/MslConstants$SignatureAlgo;->SHA256withRSA:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/MslConstants$SignatureAlgo;->AESCmac:Lcom/netflix/msl/MslConstants$SignatureAlgo;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->$VALUES:[Lcom/netflix/msl/MslConstants$SignatureAlgo;

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
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    invoke-static {v0, p0}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$SignatureAlgo;
    .locals 1

    .prologue
    .line 149
    const-class v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/MslConstants$SignatureAlgo;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/netflix/msl/MslConstants$SignatureAlgo;->$VALUES:[Lcom/netflix/msl/MslConstants$SignatureAlgo;

    invoke-virtual {v0}, [Lcom/netflix/msl/MslConstants$SignatureAlgo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/MslConstants$SignatureAlgo;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$SignatureAlgo;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
