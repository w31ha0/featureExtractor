.class public final enum Lcom/netflix/msl/msg/MessageContext$ReauthCode;
.super Ljava/lang/Enum;
.source "MessageContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/msg/MessageContext$ReauthCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/msg/MessageContext$ReauthCode;

.field public static final enum SSOTOKEN_REJECTED:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

.field public static final enum USERDATA_REAUTH:Lcom/netflix/msl/msg/MessageContext$ReauthCode;


# instance fields
.field private final code:Lcom/netflix/msl/MslConstants$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    const-string/jumbo v1, "USERDATA_REAUTH"

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/msl/msg/MessageContext$ReauthCode;-><init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V

    sput-object v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->USERDATA_REAUTH:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    .line 50
    new-instance v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    const-string/jumbo v1, "SSOTOKEN_REJECTED"

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->SSOTOKEN_REJECTED:Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/msl/msg/MessageContext$ReauthCode;-><init>(Ljava/lang/String;ILcom/netflix/msl/MslConstants$ResponseCode;)V

    sput-object v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->SSOTOKEN_REJECTED:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    sget-object v1, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->USERDATA_REAUTH:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->SSOTOKEN_REJECTED:Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->$VALUES:[Lcom/netflix/msl/msg/MessageContext$ReauthCode;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->code:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 75
    return-void
.end method

.method public static valueOf(Lcom/netflix/msl/MslConstants$ResponseCode;)Lcom/netflix/msl/msg/MessageContext$ReauthCode;
    .locals 5

    .prologue
    .line 60
    invoke-static {}, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->values()[Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 61
    iget-object v4, v3, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->code:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-ne v4, p0, :cond_0

    .line 62
    return-object v3

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
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

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/msg/MessageContext$ReauthCode;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/msg/MessageContext$ReauthCode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->$VALUES:[Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    invoke-virtual {v0}, [Lcom/netflix/msl/msg/MessageContext$ReauthCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/msg/MessageContext$ReauthCode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/msl/msg/MessageContext$ReauthCode;->code:Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-virtual {v0}, Lcom/netflix/msl/MslConstants$ResponseCode;->intValue()I

    move-result v0

    return v0
.end method
