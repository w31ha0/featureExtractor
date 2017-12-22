.class public final enum Lcom/netflix/mediaclient/service/net/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/net/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum CDMA:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum EDGE:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum EHRPD:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum EVDO_0:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum EVDO_A:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum EVDO_B:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum GPRS:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum HSDPA:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum HSPA:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum HSPAP:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum HSUPA:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum IDEN:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum LTE:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum NONE:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum UMTS:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/net/NetworkType;

.field public static final enum _1xRTT:Lcom/netflix/mediaclient/service/net/NetworkType;


# instance fields
.field private desc:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "NONE"

    const/high16 v2, -0x80000000

    const-string/jumbo v3, "NONE"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->NONE:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, "UNKNOWN"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->UNKNOWN:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "EDGE"

    const-string/jumbo v2, "EDGE"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EDGE:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "UMTS"

    const-string/jumbo v2, "UMTS"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->UMTS:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "CDMA"

    const-string/jumbo v2, "CDMA"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->CDMA:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "EVDO_0"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string/jumbo v4, "EVDO_0"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EVDO_0:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "EVDO_A"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string/jumbo v4, "EVDO_A"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EVDO_A:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "_1xRTT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string/jumbo v4, "1xRTT"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->_1xRTT:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "HSDPA"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string/jumbo v4, "HSDPA"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->HSDPA:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "HSUPA"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string/jumbo v4, "HSUPA"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->HSUPA:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "HSPA"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-string/jumbo v4, "HSPA"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->HSPA:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "IDEN"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const-string/jumbo v4, "IDEN"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->IDEN:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "EVDO_B"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const-string/jumbo v4, "EVDO_B"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EVDO_B:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "LTE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const-string/jumbo v4, "LTE"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->LTE:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "EHRPD"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-string/jumbo v4, "EHRPD"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EHRPD:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "GPRS"

    const/16 v2, 0xf

    const-string/jumbo v3, "GPRS"

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->GPRS:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    const-string/jumbo v1, "HSPAP"

    const/16 v2, 0x10

    const/16 v3, 0xf

    const-string/jumbo v4, "HSPAP"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/net/NetworkType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->HSPAP:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 19
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/netflix/mediaclient/service/net/NetworkType;

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->NONE:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->UNKNOWN:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->EDGE:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->UMTS:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/netflix/mediaclient/service/net/NetworkType;->CDMA:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->EVDO_0:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->EVDO_A:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->_1xRTT:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->HSDPA:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->HSUPA:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->HSPA:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->IDEN:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->EVDO_B:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->LTE:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->EHRPD:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->GPRS:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/service/net/NetworkType;->HSPAP:Lcom/netflix/mediaclient/service/net/NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->$VALUES:[Lcom/netflix/mediaclient/service/net/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/netflix/mediaclient/service/net/NetworkType;->type:I

    .line 47
    iput-object p4, p0, Lcom/netflix/mediaclient/service/net/NetworkType;->desc:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static getNetworkType(I)Lcom/netflix/mediaclient/service/net/NetworkType;
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/service/net/NetworkType;->values()[Lcom/netflix/mediaclient/service/net/NetworkType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 69
    invoke-static {}, Lcom/netflix/mediaclient/service/net/NetworkType;->values()[Lcom/netflix/mediaclient/service/net/NetworkType;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lcom/netflix/mediaclient/service/net/NetworkType;->type:I

    if-ne v1, p0, :cond_0

    .line 70
    invoke-static {}, Lcom/netflix/mediaclient/service/net/NetworkType;->values()[Lcom/netflix/mediaclient/service/net/NetworkType;

    move-result-object v1

    aget-object v0, v1, v0

    .line 75
    :goto_1
    return-object v0

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->NONE:Lcom/netflix/mediaclient/service/net/NetworkType;

    goto :goto_1
.end method

.method public static is2G(Lcom/netflix/mediaclient/service/net/NetworkType;)Z
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EDGE:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->IDEN:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 127
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->CDMA:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 128
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->GPRS:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 129
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is3G(Lcom/netflix/mediaclient/service/net/NetworkType;)Z
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->UMTS:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->HSDPA:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 106
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->HSPA:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 107
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EVDO_0:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 108
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EVDO_A:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 109
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EVDO_B:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 110
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->_1xRTT:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 111
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->HSUPA:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 112
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->EHRPD:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 113
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->HSPAP:Lcom/netflix/mediaclient/service/net/NetworkType;

    .line 114
    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is4G(Lcom/netflix/mediaclient/service/net/NetworkType;)Z
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->LTE:Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/net/NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/net/NetworkType;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/net/NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/net/NetworkType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/net/NetworkType;->$VALUES:[Lcom/netflix/mediaclient/service/net/NetworkType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/net/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/net/NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/net/NetworkType;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/netflix/mediaclient/service/net/NetworkType;->type:I

    return v0
.end method
