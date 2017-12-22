.class public final enum Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
.super Ljava/lang/Enum;
.source "IpConnectivityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

.field public static final enum IP_V4_ONLY:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

.field public static final enum IP_V4_V6:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

.field public static final enum IP_V6_ONLY:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

.field public static final enum IP_V6_V4:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    const-string/jumbo v1, "IP_V4_ONLY"

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V4_ONLY:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    const-string/jumbo v1, "IP_V6_ONLY"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V6_ONLY:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    const-string/jumbo v1, "IP_V4_V6"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V4_V6:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    const-string/jumbo v1, "IP_V6_V4"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V6_V4:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    sget-object v1, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V4_ONLY:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V6_ONLY:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V4_V6:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V6_V4:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->$VALUES:[Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->mValue:I

    .line 30
    return-void
.end method

.method public static from(I)Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 1

    .prologue
    .line 48
    packed-switch p0, :pswitch_data_0

    .line 59
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V4_ONLY:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    goto :goto_0

    .line 52
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V6_ONLY:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    goto :goto_0

    .line 54
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V4_V6:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V6_V4:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->$VALUES:[Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->mValue:I

    return v0
.end method
