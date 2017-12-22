.class public final enum Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;
.super Ljava/lang/Enum;
.source "HevcCapabilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

.field public static final enum DOLBYVISION:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

.field public static final enum HDR10:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

.field public static final enum NONE:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

.field public static final enum VP9:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->NONE:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    const-string/jumbo v1, "HDR10"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->HDR10:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    const-string/jumbo v1, "DOLBYVISION"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->DOLBYVISION:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    const-string/jumbo v1, "VP9"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->VP9:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    sget-object v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->NONE:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->HDR10:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->DOLBYVISION:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->VP9:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->$VALUES:[Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInteger(I)Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;
    .locals 1

    .prologue
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->NONE:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->NONE:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    goto :goto_0

    .line 50
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->HDR10:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->DOLBYVISION:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    goto :goto_0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->VP9:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->$VALUES:[Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    return-object v0
.end method
