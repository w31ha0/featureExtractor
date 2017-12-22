.class public final enum Lorg/linphone/core/LinphoneCore$TunnelMode;
.super Ljava/lang/Enum;
.source "LinphoneCore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/linphone/core/LinphoneCore$TunnelMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/linphone/core/LinphoneCore$TunnelMode;

.field public static final enum auto:Lorg/linphone/core/LinphoneCore$TunnelMode;

.field public static final enum disable:Lorg/linphone/core/LinphoneCore$TunnelMode;

.field public static final enum enable:Lorg/linphone/core/LinphoneCore$TunnelMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1689
    new-instance v0, Lorg/linphone/core/LinphoneCore$TunnelMode;

    const-string/jumbo v1, "disable"

    invoke-direct {v0, v1, v2, v2}, Lorg/linphone/core/LinphoneCore$TunnelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$TunnelMode;->disable:Lorg/linphone/core/LinphoneCore$TunnelMode;

    .line 1690
    new-instance v0, Lorg/linphone/core/LinphoneCore$TunnelMode;

    const-string/jumbo v1, "enable"

    invoke-direct {v0, v1, v3, v3}, Lorg/linphone/core/LinphoneCore$TunnelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$TunnelMode;->enable:Lorg/linphone/core/LinphoneCore$TunnelMode;

    .line 1691
    new-instance v0, Lorg/linphone/core/LinphoneCore$TunnelMode;

    const-string/jumbo v1, "auto"

    invoke-direct {v0, v1, v4, v4}, Lorg/linphone/core/LinphoneCore$TunnelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$TunnelMode;->auto:Lorg/linphone/core/LinphoneCore$TunnelMode;

    .line 1688
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/linphone/core/LinphoneCore$TunnelMode;

    sget-object v1, Lorg/linphone/core/LinphoneCore$TunnelMode;->disable:Lorg/linphone/core/LinphoneCore$TunnelMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/linphone/core/LinphoneCore$TunnelMode;->enable:Lorg/linphone/core/LinphoneCore$TunnelMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/linphone/core/LinphoneCore$TunnelMode;->auto:Lorg/linphone/core/LinphoneCore$TunnelMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/linphone/core/LinphoneCore$TunnelMode;->$VALUES:[Lorg/linphone/core/LinphoneCore$TunnelMode;

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
    .line 1694
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1695
    iput p3, p0, Lorg/linphone/core/LinphoneCore$TunnelMode;->value:I

    .line 1696
    return-void
.end method

.method public static enumToInt(Lorg/linphone/core/LinphoneCore$TunnelMode;)I
    .locals 1

    .prologue
    .line 1698
    iget v0, p0, Lorg/linphone/core/LinphoneCore$TunnelMode;->value:I

    return v0
.end method

.method public static intToEnum(I)Lorg/linphone/core/LinphoneCore$TunnelMode;
    .locals 1

    .prologue
    .line 1701
    packed-switch p0, :pswitch_data_0

    .line 1705
    sget-object v0, Lorg/linphone/core/LinphoneCore$TunnelMode;->disable:Lorg/linphone/core/LinphoneCore$TunnelMode;

    :goto_0
    return-object v0

    .line 1702
    :pswitch_0
    sget-object v0, Lorg/linphone/core/LinphoneCore$TunnelMode;->disable:Lorg/linphone/core/LinphoneCore$TunnelMode;

    goto :goto_0

    .line 1703
    :pswitch_1
    sget-object v0, Lorg/linphone/core/LinphoneCore$TunnelMode;->enable:Lorg/linphone/core/LinphoneCore$TunnelMode;

    goto :goto_0

    .line 1704
    :pswitch_2
    sget-object v0, Lorg/linphone/core/LinphoneCore$TunnelMode;->auto:Lorg/linphone/core/LinphoneCore$TunnelMode;

    goto :goto_0

    .line 1701
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/linphone/core/LinphoneCore$TunnelMode;
    .locals 1

    .prologue
    .line 1688
    const-class v0, Lorg/linphone/core/LinphoneCore$TunnelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCore$TunnelMode;

    return-object v0
.end method

.method public static values()[Lorg/linphone/core/LinphoneCore$TunnelMode;
    .locals 1

    .prologue
    .line 1688
    sget-object v0, Lorg/linphone/core/LinphoneCore$TunnelMode;->$VALUES:[Lorg/linphone/core/LinphoneCore$TunnelMode;

    invoke-virtual {v0}, [Lorg/linphone/core/LinphoneCore$TunnelMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/linphone/core/LinphoneCore$TunnelMode;

    return-object v0
.end method
