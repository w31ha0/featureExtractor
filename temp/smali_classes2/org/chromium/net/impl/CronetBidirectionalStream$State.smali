.class final enum Lorg/chromium/net/impl/CronetBidirectionalStream$State;
.super Ljava/lang/Enum;
.source "CronetBidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/chromium/net/impl/CronetBidirectionalStream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum CANCELED:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum ERROR:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum NOT_STARTED:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum READING:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum READING_DONE:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum STARTED:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum SUCCESS:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum WAITING_FOR_FLUSH:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum WAITING_FOR_READ:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum WRITING:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

.field public static final enum WRITING_DONE:Lorg/chromium/net/impl/CronetBidirectionalStream$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->NOT_STARTED:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 58
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->STARTED:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 60
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "WAITING_FOR_READ"

    invoke-direct {v0, v1, v5}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WAITING_FOR_READ:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 62
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "READING"

    invoke-direct {v0, v1, v6}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->READING:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 64
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "READING_DONE"

    invoke-direct {v0, v1, v7}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->READING_DONE:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 66
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->CANCELED:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 68
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->ERROR:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 70
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "SUCCESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->SUCCESS:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 73
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "WAITING_FOR_FLUSH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WAITING_FOR_FLUSH:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 75
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "WRITING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WRITING:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 77
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    const-string/jumbo v1, "WRITING_DONE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WRITING_DONE:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    .line 51
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    sget-object v1, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->NOT_STARTED:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->STARTED:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WAITING_FOR_READ:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->READING:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->READING_DONE:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->CANCELED:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->ERROR:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->SUCCESS:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WAITING_FOR_FLUSH:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WRITING:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->WRITING_DONE:Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->$VALUES:[Lorg/chromium/net/impl/CronetBidirectionalStream$State;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/net/impl/CronetBidirectionalStream$State;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    return-object v0
.end method

.method public static values()[Lorg/chromium/net/impl/CronetBidirectionalStream$State;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/chromium/net/impl/CronetBidirectionalStream$State;->$VALUES:[Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    invoke-virtual {v0}, [Lorg/chromium/net/impl/CronetBidirectionalStream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/net/impl/CronetBidirectionalStream$State;

    return-object v0
.end method
