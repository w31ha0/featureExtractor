.class public final enum Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;
.super Ljava/lang/Enum;
.source "MslSignatureEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

.field public static final enum V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

.field public static final enum V2:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    const-string/jumbo v1, "V1"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 77
    new-instance v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    const-string/jumbo v1, "V2"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    sget-object v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->$VALUES:[Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;
    .locals 2

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown signature envelope version."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    .line 87
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->$VALUES:[Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v0}, [Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 3

    .prologue
    .line 96
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    invoke-virtual {p0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 99
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No integer value defined for version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :pswitch_0
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
