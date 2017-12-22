.class final enum Lcom/netflix/mediaclient/net/NetworkSpeedType;
.super Ljava/lang/Enum;
.source "NetworkSpeedType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/net/NetworkSpeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/net/NetworkSpeedType;

.field public static final enum DSL_512:Lcom/netflix/mediaclient/net/NetworkSpeedType;

.field public static final enum EDGE:Lcom/netflix/mediaclient/net/NetworkSpeedType;

.field public static final enum GPRS:Lcom/netflix/mediaclient/net/NetworkSpeedType;

.field public static final enum LTE_4G_BASIC:Lcom/netflix/mediaclient/net/NetworkSpeedType;

.field public static final enum NoLimit:Lcom/netflix/mediaclient/net/NetworkSpeedType;

.field public static final enum UMTS_1MBPS:Lcom/netflix/mediaclient/net/NetworkSpeedType;

.field public static final enum WIFI_SPEED1:Lcom/netflix/mediaclient/net/NetworkSpeedType;

.field public static final enum WIFI_SPEED2:Lcom/netflix/mediaclient/net/NetworkSpeedType;

.field public static final enum WIFI_SPEED3:Lcom/netflix/mediaclient/net/NetworkSpeedType;


# instance fields
.field private final mDisplayStr:Ljava/lang/String;

.field private final mKey:I

.field private final mSpeedLimitBitsPerSecond:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v1, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    const-string/jumbo v2, "NoLimit"

    const-string/jumbo v4, "No Limit"

    const-wide/16 v6, -0x1

    move v5, v3

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/net/NetworkSpeedType;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    sput-object v1, Lcom/netflix/mediaclient/net/NetworkSpeedType;->NoLimit:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    .line 9
    new-instance v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    const-string/jumbo v6, "GPRS"

    const-string/jumbo v8, "GPRS"

    const-wide/32 v10, 0x20000

    move v7, v12

    move v9, v12

    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/net/NetworkSpeedType;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    sput-object v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;->GPRS:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    .line 10
    new-instance v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    const-string/jumbo v6, "EDGE"

    const-string/jumbo v8, "EDGE"

    const-wide/32 v10, 0x40000

    move v7, v13

    move v9, v13

    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/net/NetworkSpeedType;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    sput-object v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;->EDGE:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    .line 11
    new-instance v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    const-string/jumbo v6, "DSL_512"

    const-string/jumbo v8, "DSL 512"

    const-wide/32 v10, 0x80000

    move v7, v14

    move v9, v14

    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/net/NetworkSpeedType;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    sput-object v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;->DSL_512:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    .line 12
    new-instance v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    const-string/jumbo v6, "UMTS_1MBPS"

    const-string/jumbo v8, "UMTS 1mpbs"

    const-wide/32 v10, 0x100000

    move v7, v15

    move v9, v15

    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/net/NetworkSpeedType;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    sput-object v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;->UMTS_1MBPS:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    .line 13
    new-instance v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    const-string/jumbo v6, "LTE_4G_BASIC"

    const/4 v7, 0x5

    const-string/jumbo v8, "LTE/4G basic"

    const/4 v9, 0x5

    const-wide/32 v10, 0x300000

    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/net/NetworkSpeedType;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    sput-object v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;->LTE_4G_BASIC:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    .line 14
    new-instance v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    const-string/jumbo v6, "WIFI_SPEED1"

    const/4 v7, 0x6

    const-string/jumbo v8, "WiFi low"

    const/4 v9, 0x6

    const-wide/32 v10, 0x500000

    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/net/NetworkSpeedType;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    sput-object v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;->WIFI_SPEED1:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    .line 15
    new-instance v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    const-string/jumbo v6, "WIFI_SPEED2"

    const/4 v7, 0x7

    const-string/jumbo v8, "WiFi medium"

    const/4 v9, 0x7

    const-wide/32 v10, 0x800000

    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/net/NetworkSpeedType;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    sput-object v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;->WIFI_SPEED2:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    .line 16
    new-instance v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    const-string/jumbo v6, "WIFI_SPEED3"

    const/16 v7, 0x8

    const-string/jumbo v8, "WiFi high"

    const/16 v9, 0x8

    const-wide/32 v10, 0x1000000

    invoke-direct/range {v5 .. v11}, Lcom/netflix/mediaclient/net/NetworkSpeedType;-><init>(Ljava/lang/String;ILjava/lang/String;IJ)V

    sput-object v5, Lcom/netflix/mediaclient/net/NetworkSpeedType;->WIFI_SPEED3:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    .line 5
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/netflix/mediaclient/net/NetworkSpeedType;

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkSpeedType;->NoLimit:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkSpeedType;->GPRS:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkSpeedType;->EDGE:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkSpeedType;->DSL_512:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/netflix/mediaclient/net/NetworkSpeedType;->UMTS_1MBPS:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/net/NetworkSpeedType;->LTE_4G_BASIC:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/net/NetworkSpeedType;->WIFI_SPEED1:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/net/NetworkSpeedType;->WIFI_SPEED2:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/net/NetworkSpeedType;->WIFI_SPEED3:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->$VALUES:[Lcom/netflix/mediaclient/net/NetworkSpeedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mDisplayStr:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mKey:I

    .line 25
    iput-wide p5, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    .line 26
    return-void
.end method

.method public static getByKeyValue(I)Lcom/netflix/mediaclient/net/NetworkSpeedType;
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/netflix/mediaclient/net/NetworkSpeedType;->values()[Lcom/netflix/mediaclient/net/NetworkSpeedType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 35
    invoke-virtual {v0}, Lcom/netflix/mediaclient/net/NetworkSpeedType;->getKeyValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 39
    :goto_1
    return-object v0

    .line 34
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->NoLimit:Lcom/netflix/mediaclient/net/NetworkSpeedType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/net/NetworkSpeedType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/net/NetworkSpeedType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/net/NetworkSpeedType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->$VALUES:[Lcom/netflix/mediaclient/net/NetworkSpeedType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/net/NetworkSpeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/net/NetworkSpeedType;

    return-object v0
.end method


# virtual methods
.method public getKeyValue()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mKey:I

    return v0
.end method

.method public getSpeedInBitsPerSecond()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    return-wide v0
.end method

.method public getStringForDebugMenu()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/32 v8, 0x40000000

    const-wide/32 v6, 0x100000

    const-wide/16 v4, 0x400

    .line 44
    iget-wide v0, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mDisplayStr:Ljava/lang/String;

    .line 55
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "bps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mDisplayStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "kps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 50
    :cond_2
    iget-wide v0, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mbps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/net/NetworkSpeedType;->mSpeedLimitBitsPerSecond:J

    div-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "gbps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
