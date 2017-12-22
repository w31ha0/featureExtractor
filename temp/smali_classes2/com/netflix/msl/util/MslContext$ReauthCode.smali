.class public final enum Lcom/netflix/msl/util/MslContext$ReauthCode;
.super Ljava/lang/Enum;
.source "MslContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/util/MslContext$ReauthCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/util/MslContext$ReauthCode;

.field public static final enum ENTITYDATA_REAUTH:Lcom/netflix/msl/util/MslContext$ReauthCode;

.field public static final enum ENTITY_REAUTH:Lcom/netflix/msl/util/MslContext$ReauthCode;


# instance fields
.field private final code:Lcom/netflix/msl/MslConstants$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/netflix/msl/util/MslContext$ReauthCode;

    const-string/jumbo v1, "ENTITY_REAUTH"

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/msl/util/MslContext$ReauthCode;-><init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V

    sput-object v0, Lcom/netflix/msl/util/MslContext$ReauthCode;->ENTITY_REAUTH:Lcom/netflix/msl/util/MslContext$ReauthCode;

    .line 56
    new-instance v0, Lcom/netflix/msl/util/MslContext$ReauthCode;

    const-string/jumbo v1, "ENTITYDATA_REAUTH"

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/msl/util/MslContext$ReauthCode;-><init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V

    sput-object v0, Lcom/netflix/msl/util/MslContext$ReauthCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/util/MslContext$ReauthCode;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/util/MslContext$ReauthCode;

    sget-object v1, Lcom/netflix/msl/util/MslContext$ReauthCode;->ENTITY_REAUTH:Lcom/netflix/msl/util/MslContext$ReauthCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/util/MslContext$ReauthCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/util/MslContext$ReauthCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/msl/util/MslContext$ReauthCode;->$VALUES:[Lcom/netflix/msl/util/MslContext$ReauthCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/msl/MslConstants$ResponseCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/netflix/msl/util/MslContext$ReauthCode;->code:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 81
    return-void
.end method

.method public static valueOf(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/util/MslContext$ReauthCode;
    .locals 5

    .prologue
    .line 66
    invoke-static {}, Lcom/netflix/msl/util/MslContext$ReauthCode;->values()[Lcom/netflix/msl/util/MslContext$ReauthCode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 67
    iget-object v4, v3, Lcom/netflix/msl/util/MslContext$ReauthCode;->code:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-ne v4, p0, :cond_0

    .line 68
    return-object v3

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown reauthentication code value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/util/MslContext$ReauthCode;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/netflix/msl/util/MslContext$ReauthCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/util/MslContext$ReauthCode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/util/MslContext$ReauthCode;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/netflix/msl/util/MslContext$ReauthCode;->$VALUES:[Lcom/netflix/msl/util/MslContext$ReauthCode;

    invoke-virtual {v0}, [Lcom/netflix/msl/util/MslContext$ReauthCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/util/MslContext$ReauthCode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/msl/util/MslContext$ReauthCode;->code:Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-virtual {v0}, Lcom/netflix/msl/MslConstants$ResponseCode;->intValue()I

    move-result v0

    return v0
.end method
