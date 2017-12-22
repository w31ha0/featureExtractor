.class public final enum Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;
.super Ljava/lang/Enum;
.source "LinphoneCallStats.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

.field public static final enum INET:Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

.field public static final enum INET_6:Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

.field public static final enum UNSPEC:Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    const-string/jumbo v1, "INET"

    invoke-direct {v0, v1, v2, v2}, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->INET:Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    .line 106
    new-instance v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    const-string/jumbo v1, "INET_6"

    invoke-direct {v0, v1, v3, v3}, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->INET_6:Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    .line 107
    new-instance v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    const-string/jumbo v1, "UNSPEC"

    invoke-direct {v0, v1, v4, v4}, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->UNSPEC:Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    sget-object v1, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->INET:Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->INET_6:Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->UNSPEC:Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    aput-object v1, v0, v4

    sput-object v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->$VALUES:[Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

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
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput p3, p0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->value:I

    .line 113
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    return-object v0
.end method

.method public static values()[Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->$VALUES:[Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    invoke-virtual {v0}, [Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/linphone/core/LinphoneCallStats$LinphoneAddressFamily;->value:I

    return v0
.end method
