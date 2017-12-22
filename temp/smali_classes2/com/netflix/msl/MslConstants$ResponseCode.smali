.class public final enum Lcom/netflix/msl/MslConstants$ResponseCode;
.super Ljava/lang/Enum;
.source "MslConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/MslConstants$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum EXPIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum KEYX_REQUIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum REPLAYED:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum SSOTOKEN_REJECTED:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum TRANSIENT_FAILURE:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

.field public static final enum USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 184
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "FAIL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 186
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "TRANSIENT_FAILURE"

    invoke-direct {v0, v1, v4, v5}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->TRANSIENT_FAILURE:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 188
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "ENTITY_REAUTH"

    invoke-direct {v0, v1, v5, v6}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 190
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "USER_REAUTH"

    invoke-direct {v0, v1, v6, v7}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 192
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "KEYX_REQUIRED"

    invoke-direct {v0, v1, v7, v8}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->KEYX_REQUIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 194
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "ENTITYDATA_REAUTH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 196
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "USERDATA_REAUTH"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 198
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "EXPIRED"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->EXPIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 200
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "REPLAYED"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->REPLAYED:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 202
    new-instance v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v1, "SSOTOKEN_REJECTED"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslConstants$ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->SSOTOKEN_REJECTED:Lcom/netflix/msl/MslConstants$ResponseCode;

    .line 182
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/netflix/msl/MslConstants$ResponseCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->TRANSIENT_FAILURE:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->KEYX_REQUIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->EXPIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->REPLAYED:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->SSOTOKEN_REJECTED:Lcom/netflix/msl/MslConstants$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->$VALUES:[Lcom/netflix/msl/MslConstants$ResponseCode;

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
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput p3, p0, Lcom/netflix/msl/MslConstants$ResponseCode;->code:I

    .line 225
    return-void
.end method

.method public static valueOf(I)Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 5

    .prologue
    .line 211
    invoke-static {}, Lcom/netflix/msl/MslConstants$ResponseCode;->values()[Lcom/netflix/msl/MslConstants$ResponseCode;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 212
    invoke-virtual {v3}, Lcom/netflix/msl/MslConstants$ResponseCode;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 213
    return-object v3

    .line 211
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown response code value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 1

    .prologue
    .line 182
    const-class v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/MslConstants$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/netflix/msl/MslConstants$ResponseCode;->$VALUES:[Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-virtual {v0}, [Lcom/netflix/msl/MslConstants$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/MslConstants$ResponseCode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/netflix/msl/MslConstants$ResponseCode;->code:I

    return v0
.end method
