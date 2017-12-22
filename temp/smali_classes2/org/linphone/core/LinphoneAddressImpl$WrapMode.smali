.class public final enum Lorg/linphone/core/LinphoneAddressImpl$WrapMode;
.super Ljava/lang/Enum;
.source "LinphoneAddressImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/linphone/core/LinphoneAddressImpl$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

.field public static final enum FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

.field public static final enum FromExisting:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

.field public static final enum FromNew:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    const-string/jumbo v1, "FromNew"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromNew:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    .line 26
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    const-string/jumbo v1, "FromConst"

    invoke-direct {v0, v1, v3}, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    .line 27
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    const-string/jumbo v1, "FromExisting"

    invoke-direct {v0, v1, v4}, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromExisting:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromNew:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromExisting:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->$VALUES:[Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddressImpl$WrapMode;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    return-object v0
.end method

.method public static values()[Lorg/linphone/core/LinphoneAddressImpl$WrapMode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->$VALUES:[Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-virtual {v0}, [Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    return-object v0
.end method
