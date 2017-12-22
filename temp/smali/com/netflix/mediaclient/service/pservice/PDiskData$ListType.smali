.class public final enum Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
.super Ljava/lang/Enum;
.source "PDiskData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum LOMO_INFO:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const-string/jumbo v1, "BILLBOARD"

    const-string/jumbo v2, "Spotlight"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 149
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const-string/jumbo v1, "CW"

    const-string/jumbo v2, "ContinueWatching"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 150
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const-string/jumbo v1, "IQ"

    const-string/jumbo v2, "MyList"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 151
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const-string/jumbo v1, "STANDARD_FIRST"

    const-string/jumbo v2, "arFirst"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 152
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const-string/jumbo v1, "STANDARD_SECOND"

    const-string/jumbo v2, "arSecond"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 153
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const-string/jumbo v1, "NON_MEMBER"

    const/4 v2, 0x5

    const-string/jumbo v3, "nonMember"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 154
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const-string/jumbo v1, "LOMO_INFO"

    const/4 v2, 0x6

    const-string/jumbo v3, "lomoInfo"

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->LOMO_INFO:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x7

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 147
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->LOMO_INFO:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->$VALUES:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

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
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput-object p3, p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->value:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 5

    .prologue
    .line 164
    invoke-static {}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->values()[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 165
    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    :goto_1
    return-object v0

    .line 164
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->$VALUES:[Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->value:Ljava/lang/String;

    return-object v0
.end method
