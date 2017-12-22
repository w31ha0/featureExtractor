.class public final enum Lcom/netflix/msl/MslConstants$CipherSpec;
.super Ljava/lang/Enum;
.source "MslConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/msl/MslConstants$CipherSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/msl/MslConstants$CipherSpec;

.field public static final enum AESWrap:Lcom/netflix/msl/MslConstants$CipherSpec;

.field private static final AES_CBC_PKCS5PADDING:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final enum AES_CBC_PKCS5Padding:Lcom/netflix/msl/MslConstants$CipherSpec;

.field private static final RSA_ECB_PKCS1PADDING:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field public static final enum RSA_ECB_PKCS1Padding:Lcom/netflix/msl/MslConstants$CipherSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    const-string/jumbo v1, "AES_CBC_PKCS5Padding"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslConstants$CipherSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->AES_CBC_PKCS5Padding:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 104
    new-instance v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    const-string/jumbo v1, "AESWrap"

    invoke-direct {v0, v1, v3}, Lcom/netflix/msl/MslConstants$CipherSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->AESWrap:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 106
    new-instance v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    const-string/jumbo v1, "RSA_ECB_PKCS1Padding"

    invoke-direct {v0, v1, v4}, Lcom/netflix/msl/MslConstants$CipherSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->RSA_ECB_PKCS1Padding:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/msl/MslConstants$CipherSpec;

    sget-object v1, Lcom/netflix/msl/MslConstants$CipherSpec;->AES_CBC_PKCS5Padding:Lcom/netflix/msl/MslConstants$CipherSpec;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/msl/MslConstants$CipherSpec;->AESWrap:Lcom/netflix/msl/MslConstants$CipherSpec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/msl/MslConstants$CipherSpec;->RSA_ECB_PKCS1Padding:Lcom/netflix/msl/MslConstants$CipherSpec;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->$VALUES:[Lcom/netflix/msl/MslConstants$CipherSpec;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CipherSpec;
    .locals 1

    .prologue
    .line 120
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->AES_CBC_PKCS5Padding:Lcom/netflix/msl/MslConstants$CipherSpec;

    .line 124
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->RSA_ECB_PKCS1Padding:Lcom/netflix/msl/MslConstants$CipherSpec;

    goto :goto_0

    .line 124
    :cond_1
    const-class v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    invoke-static {v0, p0}, Lcom/netflix/msl/MslConstants$CipherSpec;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/msl/MslConstants$CipherSpec;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/MslConstants$CipherSpec;

    return-object v0
.end method

.method public static values()[Lcom/netflix/msl/MslConstants$CipherSpec;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/netflix/msl/MslConstants$CipherSpec;->$VALUES:[Lcom/netflix/msl/MslConstants$CipherSpec;

    invoke-virtual {v0}, [Lcom/netflix/msl/MslConstants$CipherSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/msl/MslConstants$CipherSpec;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/netflix/msl/MslConstants$1;->$SwitchMap$com$netflix$msl$MslConstants$CipherSpec:[I

    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$CipherSpec;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    invoke-virtual {p0}, Lcom/netflix/msl/MslConstants$CipherSpec;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    goto :goto_0

    .line 141
    :pswitch_1
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
