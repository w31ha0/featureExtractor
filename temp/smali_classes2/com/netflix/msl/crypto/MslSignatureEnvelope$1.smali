.class synthetic Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;
.super Ljava/lang/Object;
.source "MslSignatureEnvelope.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    invoke-static {}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->values()[Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    :try_start_0
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    sget-object v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netflix/msl/crypto/MslSignatureEnvelope$1;->$SwitchMap$com$netflix$msl$crypto$MslSignatureEnvelope$Version:[I

    sget-object v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->V2:Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;

    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope$Version;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
