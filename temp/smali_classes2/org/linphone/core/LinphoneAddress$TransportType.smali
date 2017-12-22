.class public Lorg/linphone/core/LinphoneAddress$TransportType;
.super Ljava/lang/Object;
.source "LinphoneAddress.java"


# static fields
.field public static LinphoneTransportTcp:Lorg/linphone/core/LinphoneAddress$TransportType;

.field public static LinphoneTransportTls:Lorg/linphone/core/LinphoneAddress$TransportType;

.field public static LinphoneTransportUdp:Lorg/linphone/core/LinphoneAddress$TransportType;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/linphone/core/LinphoneAddress$TransportType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStringValue:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/LinphoneAddress$TransportType;->values:Ljava/util/Vector;

    .line 36
    new-instance v0, Lorg/linphone/core/LinphoneAddress$TransportType;

    const/4 v1, 0x0

    const-string/jumbo v2, "LinphoneTransportUdp"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAddress$TransportType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAddress$TransportType;->LinphoneTransportUdp:Lorg/linphone/core/LinphoneAddress$TransportType;

    .line 37
    new-instance v0, Lorg/linphone/core/LinphoneAddress$TransportType;

    const/4 v1, 0x1

    const-string/jumbo v2, "LinphoneTransportTcp"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAddress$TransportType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAddress$TransportType;->LinphoneTransportTcp:Lorg/linphone/core/LinphoneAddress$TransportType;

    .line 38
    new-instance v0, Lorg/linphone/core/LinphoneAddress$TransportType;

    const/4 v1, 0x2

    const-string/jumbo v2, "LinphoneTransportTls"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAddress$TransportType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneAddress$TransportType;->LinphoneTransportTls:Lorg/linphone/core/LinphoneAddress$TransportType;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lorg/linphone/core/LinphoneAddress$TransportType;->mValue:I

    .line 45
    sget-object v0, Lorg/linphone/core/LinphoneAddress$TransportType;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 46
    iput-object p2, p0, Lorg/linphone/core/LinphoneAddress$TransportType;->mStringValue:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneAddress$TransportType;
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/linphone/core/LinphoneAddress$TransportType;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 51
    sget-object v0, Lorg/linphone/core/LinphoneAddress$TransportType;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneAddress$TransportType;

    .line 52
    iget v2, v0, Lorg/linphone/core/LinphoneAddress$TransportType;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v0

    .line 50
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state not found ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/linphone/core/LinphoneAddress$TransportType;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/linphone/core/LinphoneAddress$TransportType;->mStringValue:Ljava/lang/String;

    return-object v0
.end method
