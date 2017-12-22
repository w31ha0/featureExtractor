.class public final enum Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;
.super Ljava/lang/Enum;
.source "UserActionLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

.field public static final enum _1:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

.field public static final enum _2:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

.field public static final enum _3:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

.field public static final enum _4:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    const-string/jumbo v1, "_1"

    const-string/jumbo v2, "1"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->_1:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    .line 420
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    const-string/jumbo v1, "_2"

    const-string/jumbo v2, "2"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->_2:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    .line 421
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    const-string/jumbo v1, "_3"

    const-string/jumbo v2, "3"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->_3:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    .line 422
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    const-string/jumbo v1, "_4"

    const-string/jumbo v2, "4"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->_4:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    .line 418
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->_1:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->_2:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->_3:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->_4:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 427
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->mValue:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public static find(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->values()[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 445
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 446
    goto :goto_0

    .line 444
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;
    .locals 1

    .prologue
    .line 418
    const-class v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->mValue:Ljava/lang/String;

    return-object v0
.end method
