.class synthetic Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;
.super Ljava/lang/Object;
.source "HevcCapabilityHelper.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->values()[Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;->$SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;->$SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I

    sget-object v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->HDR10:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;->$SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I

    sget-object v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->DOLBYVISION:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;->$SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I

    sget-object v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->NONE:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;->$SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I

    sget-object v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->VP9:Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
