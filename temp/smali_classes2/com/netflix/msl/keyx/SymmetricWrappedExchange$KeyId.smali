.class public final enum Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;
.super Ljava/lang/Enum;
.source "SymmetricWrappedExchange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

.field public static final enum PSK:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

.field public static final enum SESSION:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    const-string/jumbo v1, "PSK"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->PSK:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    .line 56
    new-instance v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    const-string/jumbo v1, "SESSION"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->SESSION:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    sget-object v1, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->PSK:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->SESSION:Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->$VALUES:[Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->$VALUES:[Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    invoke-virtual {v0}, [Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/keyx/SymmetricWrappedExchange$KeyId;

    return-object v0
.end method
