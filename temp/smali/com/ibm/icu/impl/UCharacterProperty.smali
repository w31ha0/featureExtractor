.class public final Lcom/ibm/icu/impl/UCharacterProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final GC_CC_MASK:I

.field private static final GC_CN_MASK:I

.field private static final GC_CS_MASK:I

.field private static final GC_ZL_MASK:I

.field private static final GC_ZP_MASK:I

.field private static final GC_ZS_MASK:I

.field private static final GC_Z_MASK:I

.field public static final INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;

.field private static final gcbToHst:[I


# instance fields
.field binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

.field intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

.field m_additionalColumnsCount_:I

.field m_additionalTrie_:Lcom/ibm/icu/impl/Trie2_16;

.field m_additionalVectors_:[I

.field m_maxBlockScriptValue_:I

.field m_maxJTGValue_:I

.field public m_scriptExtensions_:[C

.field public m_trie_:Lcom/ibm/icu/impl/Trie2_16;

.field public m_unicodeVersion_:Lcom/ibm/icu/util/VersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/UCharacterProperty;->$assertionsDisabled:Z

    .line 163
    invoke-static {v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    .line 164
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    .line 165
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    .line 166
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    .line 167
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    .line 168
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    .line 170
    sget v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    sget v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    or-int/2addr v0, v1

    sget v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    or-int/2addr v0, v1

    sput v0, Lcom/ibm/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    .line 428
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->gcbToHst:[I

    .line 1436
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UCharacterProperty;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->INSTANCE:Lcom/ibm/icu/impl/UCharacterProperty;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    return-void

    :cond_0
    move v0, v1

    .line 44
    goto :goto_0

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    new-instance v1, Ljava/util/MissingResourceException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v1, v0, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 428
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x4
        0x5
        0x3
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/16 v0, 0x3d

    new-array v0, v0, [Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v2, 0x100

    invoke-direct {v1, p0, v5, v2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v2, 0x80

    invoke-direct {v1, p0, v5, v2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$1;

    invoke-direct {v1, p0, v9}, Lcom/ibm/icu/impl/UCharacterProperty$1;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$2;

    invoke-direct {v2, p0, v9}, Lcom/ibm/icu/impl/UCharacterProperty$2;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v2, p0, v5, v6}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v2, 0x80000

    invoke-direct {v1, p0, v5, v2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v1, v0, v9

    const/4 v1, 0x6

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x100000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v3, 0x400

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v2, 0x800

    invoke-direct {v1, p0, v5, v2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$3;

    invoke-direct {v2, p0, v7}, Lcom/ibm/icu/impl/UCharacterProperty$3;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x4000000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v3, 0x2000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v3, 0x4000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v3, 0x40

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x2000000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x1000000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v3, 0x200

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const v3, 0x8000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x10000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$4;

    invoke-direct {v2, p0, v9}, Lcom/ibm/icu/impl/UCharacterProperty$4;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x200000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x16

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v3, 0x20

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v3, 0x1000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v2, p0, v5, v7}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x20000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x1b

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x40000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x1e

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v2, p0, v5, v5}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x800000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x400000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x22

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x8000000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x10000000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v3, 0x25

    invoke-direct {v2, p0, v7, v3}, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v3, 0x9

    const/16 v4, 0x26

    invoke-direct {v2, p0, v3, v4}, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v3, 0x27

    invoke-direct {v2, p0, v7, v3}, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v3, 0x9

    const/16 v4, 0x28

    invoke-direct {v2, p0, v3, v4}, Lcom/ibm/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$5;

    const/16 v3, 0xb

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$5;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x20000000

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, p0, v5, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$6;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$6;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$7;

    invoke-direct {v2, p0, v5}, Lcom/ibm/icu/impl/UCharacterProperty$7;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$8;

    invoke-direct {v2, p0, v5}, Lcom/ibm/icu/impl/UCharacterProperty$8;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$9;

    invoke-direct {v2, p0, v5}, Lcom/ibm/icu/impl/UCharacterProperty$9;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$10;

    invoke-direct {v2, p0, v5}, Lcom/ibm/icu/impl/UCharacterProperty$10;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x31

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x32

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x33

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x34

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x35

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$11;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$11;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v3, 0x37

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$12;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lcom/ibm/icu/impl/UCharacterProperty$12;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x10000000

    invoke-direct {v2, p0, v6, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x20000000

    invoke-direct {v2, p0, v6, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, p0, v6, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v3, -0x80000000

    invoke-direct {v2, p0, v6, v3}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    .line 508
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$13;

    invoke-direct {v1, p0}, Lcom/ibm/icu/impl/UCharacterProperty$13;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const v2, 0x1ff00

    invoke-direct {v1, p0, v8, v2, v7}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$14;

    invoke-direct {v1, p0, v7}, Lcom/ibm/icu/impl/UCharacterProperty$14;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/16 v3, 0x1f

    invoke-direct {v2, p0, v6, v3, v8}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/high16 v3, 0xe0000

    const/16 v4, 0x11

    invoke-direct {v2, p0, v8, v3, v4}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$15;

    invoke-direct {v1, p0, v5}, Lcom/ibm/icu/impl/UCharacterProperty$15;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v1, v0, v9

    const/4 v1, 0x6

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$16;

    invoke-direct {v2, p0}, Lcom/ibm/icu/impl/UCharacterProperty$16;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$17;

    invoke-direct {v2, p0}, Lcom/ibm/icu/impl/UCharacterProperty$17;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/high16 v2, 0x3f00000

    const/16 v3, 0x14

    invoke-direct {v1, p0, v6, v2, v3}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v1, v0, v7

    const/16 v1, 0x9

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$18;

    invoke-direct {v2, p0, v5}, Lcom/ibm/icu/impl/UCharacterProperty$18;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$19;

    const/16 v3, 0xff

    invoke-direct {v2, p0, v8, v3, v8}, Lcom/ibm/icu/impl/UCharacterProperty$19;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$20;

    invoke-direct {v2, p0, v6}, Lcom/ibm/icu/impl/UCharacterProperty$20;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x100c

    invoke-direct {v2, p0, v7, v3, v5}, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x9

    const/16 v4, 0x100d

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x100e

    invoke-direct {v2, p0, v7, v3, v6}, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x9

    const/16 v4, 0x100f

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$21;

    invoke-direct {v2, p0, v7}, Lcom/ibm/icu/impl/UCharacterProperty$21;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$22;

    invoke-direct {v2, p0, v7}, Lcom/ibm/icu/impl/UCharacterProperty$22;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/16 v3, 0x3e0

    invoke-direct {v2, p0, v6, v3, v9}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const v3, 0xf8000

    const/16 v4, 0xf

    invoke-direct {v2, p0, v6, v3, v4}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    const/16 v3, 0x7c00

    const/16 v4, 0xa

    invoke-direct {v2, p0, v6, v3, v4}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$23;

    invoke-direct {v2, p0}, Lcom/ibm/icu/impl/UCharacterProperty$23;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    .line 1212
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    array-length v0, v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    .line 1213
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "binProps.length!=UProperty.BINARY_LIMIT"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    array-length v0, v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    .line 1216
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "intProps.length!=(UProperty.INT_LIMIT-UProperty.INT_START)"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :cond_1
    const-string/jumbo v0, "uprops.icu"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1221
    const v1, 0x5550726f

    new-instance v2, Lcom/ibm/icu/impl/UCharacterProperty$IsAcceptable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ibm/icu/impl/UCharacterProperty$IsAcceptable;-><init>(Lcom/ibm/icu/impl/UCharacterProperty$1;)V

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_unicodeVersion_:Lcom/ibm/icu/util/VersionInfo;

    .line 1223
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 1224
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1225
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1226
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 1227
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1228
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    .line 1229
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 1230
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 1231
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1232
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1233
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    .line 1234
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    .line 1235
    const/16 v6, 0x10

    invoke-static {v0, v6}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1238
    invoke-static {v0}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v6

    iput-object v6, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/Trie2_16;

    .line 1239
    add-int/lit8 v6, v1, -0x10

    mul-int/lit8 v6, v6, 0x4

    .line 1240
    iget-object v7, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v7}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v7

    .line 1241
    if-le v7, v6, :cond_2

    .line 1242
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "uprops.icu: not enough bytes for main trie"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_2
    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1248
    sub-int v1, v2, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1250
    iget v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v1, :cond_4

    .line 1252
    invoke-static {v0}, Lcom/ibm/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/impl/Trie2_16;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/Trie2_16;

    .line 1253
    sub-int v1, v3, v2

    mul-int/lit8 v1, v1, 0x4

    .line 1254
    iget-object v2, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v2

    .line 1255
    if-le v2, v1, :cond_3

    .line 1256
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "uprops.icu: not enough bytes for additional-properties trie"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_3
    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1262
    sub-int v1, v4, v3

    .line 1263
    invoke-static {v0, v1, v8}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    .line 1267
    :cond_4
    sub-int v1, v5, v4

    mul-int/lit8 v1, v1, 0x2

    .line 1268
    if-lez v1, :cond_5

    .line 1269
    invoke-static {v0, v1, v8}, Lcom/ibm/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    .line 1271
    :cond_5
    return-void
.end method

.method static synthetic access$000(I)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterProperty;->isgraphPOSIX(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/ibm/icu/impl/UCharacterProperty;->ntvGetType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/ibm/icu/impl/UCharacterProperty;->gcbToHst:[I

    return-object v0
.end method

.method public static getEuropeanDigit(I)I
    .locals 6

    .prologue
    const v5, 0xff21

    const/16 v4, 0x7a

    const/16 v1, 0x61

    const/16 v3, 0x5a

    const/16 v0, 0x41

    .line 797
    if-le p0, v4, :cond_0

    if-lt p0, v5, :cond_2

    :cond_0
    if-lt p0, v0, :cond_2

    if-le p0, v3, :cond_1

    if-lt p0, v1, :cond_2

    :cond_1
    const v2, 0xff5a

    if-gt p0, v2, :cond_2

    const v2, 0xff3a

    if-le p0, v2, :cond_3

    const v2, 0xff41

    if-ge p0, v2, :cond_3

    .line 800
    :cond_2
    const/4 v0, -0x1

    .line 811
    :goto_0
    return v0

    .line 802
    :cond_3
    if-gt p0, v4, :cond_5

    .line 804
    add-int/lit8 v2, p0, 0xa

    if-gt p0, v3, :cond_4

    :goto_1
    sub-int v0, v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 807
    :cond_5
    const v0, 0xff3a

    if-gt p0, v0, :cond_6

    .line 808
    add-int/lit8 v0, p0, 0xa

    sub-int/2addr v0, v5

    goto :goto_0

    .line 811
    :cond_6
    add-int/lit8 v0, p0, 0xa

    const v1, 0xff41

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static final getMask(I)I
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private static final getNumericTypeValue(I)I
    .locals 1

    .prologue
    .line 1016
    shr-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private static final isgraphPOSIX(I)Z
    .locals 3

    .prologue
    .line 182
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sget v1, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    sget v2, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    or-int/2addr v1, v2

    sget v2, Lcom/ibm/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    or-int/2addr v1, v2

    sget v2, Lcom/ibm/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final ntvGetType(I)I
    .locals 1

    .prologue
    .line 1051
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    if-ge p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    if-ge p0, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1332
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 1333
    iget v0, v0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 1339
    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1340
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1343
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1344
    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1345
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1346
    const/16 v0, 0x85

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1347
    const/16 v0, 0x86

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1350
    const/16 v0, 0x7f

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1351
    const/16 v0, 0x200a

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1352
    const/16 v0, 0x2010

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1353
    const/16 v0, 0x206a

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1354
    const/16 v0, 0x2070

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1355
    const v0, 0xfeff

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1356
    const v0, 0xff00

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1359
    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1360
    const/16 v0, 0xa1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1361
    const/16 v0, 0x2007

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1362
    const/16 v0, 0x2008

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1363
    const/16 v0, 0x202f

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1364
    const/16 v0, 0x2030

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1369
    const/16 v0, 0x3007

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1370
    const/16 v0, 0x3008

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1371
    const/16 v0, 0x4e00

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1372
    const/16 v0, 0x4e01

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1373
    const/16 v0, 0x4e8c

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1374
    const/16 v0, 0x4e8d

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1375
    const/16 v0, 0x4e09

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1376
    const/16 v0, 0x4e0a

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1377
    const/16 v0, 0x56db

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1378
    const/16 v0, 0x56dc

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1379
    const/16 v0, 0x4e94

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1380
    const/16 v0, 0x4e95

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1381
    const/16 v0, 0x516d

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1382
    const/16 v0, 0x516e

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1383
    const/16 v0, 0x4e03

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1384
    const/16 v0, 0x4e04

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1385
    const/16 v0, 0x516b

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1386
    const/16 v0, 0x516c

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1387
    const/16 v0, 0x4e5d

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1388
    const/16 v0, 0x4e5e

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1391
    const/16 v0, 0x61

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1392
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1393
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1394
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1395
    const v0, 0xff41

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1396
    const v0, 0xff5b

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1397
    const v0, 0xff21

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1398
    const v0, 0xff3b

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1401
    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1402
    const/16 v0, 0x47

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1403
    const v0, 0xff47

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1404
    const v0, 0xff27

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1407
    const/16 v0, 0x2060

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1408
    const v0, 0xfff0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1409
    const v0, 0xfffc

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1410
    const/high16 v0, 0xe0000

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1411
    const v0, 0xe1000

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1414
    const/16 v0, 0x34f

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1415
    const/16 v0, 0x350

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 1417
    return-object p1
.end method

.method public digit(I)I
    .locals 2

    .prologue
    .line 815
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 816
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 819
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAdditional(II)I
    .locals 2

    .prologue
    .line 128
    sget-boolean v0, Lcom/ibm/icu/impl/UCharacterProperty;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lt p2, v0, :cond_1

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getAge(I)Lcom/ibm/icu/util/VersionInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0, p1, v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    .line 158
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 v0, v0, 0xf

    invoke-static {v1, v0, v2, v2}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getIntPropertyValue(II)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 609
    const/16 v1, 0x1000

    if-ge p2, v1, :cond_1

    .line 610
    if-ltz p2, :cond_0

    const/16 v1, 0x3d

    if-ge p2, v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 613
    :cond_1
    const/16 v1, 0x1016

    if-ge p2, v1, :cond_2

    .line 614
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v1, p2, -0x1000

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->getValue(I)I

    move-result v0

    goto :goto_0

    .line 615
    :cond_2
    const/16 v1, 0x2000

    if-ne p2, v1, :cond_0

    .line 616
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getType(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    goto :goto_0
.end method

.method public final getProperty(I)I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_trie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Trie2_16;->get(I)I

    move-result v0

    return v0
.end method

.method public final getSource(I)I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 633
    if-gez p1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v0

    .line 635
    :cond_1
    const/16 v2, 0x3d

    if-ge p1, v2, :cond_2

    .line 636
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;->getSource()I

    move-result v0

    goto :goto_0

    .line 637
    :cond_2
    const/16 v2, 0x1000

    if-lt p1, v2, :cond_0

    .line 639
    const/16 v2, 0x1016

    if-ge p1, v2, :cond_3

    .line 640
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->intProps:[Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v1, p1, -0x1000

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->getSource()I

    move-result v0

    goto :goto_0

    .line 641
    :cond_3
    const/16 v2, 0x4000

    if-ge p1, v2, :cond_4

    .line 642
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 645
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 650
    :cond_4
    const/16 v2, 0x400e

    if-ge p1, v2, :cond_5

    .line 651
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 653
    goto :goto_0

    .line 656
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 666
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 671
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 677
    :cond_5
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 679
    goto :goto_0

    .line 642
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000 -> :sswitch_0
        0x3000 -> :sswitch_0
    .end sparse-switch

    .line 651
    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 677
    :pswitch_data_1
    .packed-switch 0x7000
        :pswitch_4
    .end packed-switch
.end method

.method public getType(I)I
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public getUnicodeNumericValue(I)D
    .locals 7

    .prologue
    const-wide v0, -0x3e6290cbac000000L    # -1.23456789E8

    .line 889
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v2

    .line 891
    if-nez v2, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-wide v0

    .line 893
    :cond_1
    const/16 v3, 0xb

    if-ge v2, v3, :cond_2

    .line 895
    add-int/lit8 v0, v2, -0x1

    int-to-double v0, v0

    goto :goto_0

    .line 896
    :cond_2
    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    .line 898
    add-int/lit8 v0, v2, -0xb

    int-to-double v0, v0

    goto :goto_0

    .line 899
    :cond_3
    const/16 v3, 0xb0

    if-ge v2, v3, :cond_4

    .line 901
    add-int/lit8 v0, v2, -0x15

    int-to-double v0, v0

    goto :goto_0

    .line 902
    :cond_4
    const/16 v3, 0x1e0

    if-ge v2, v3, :cond_5

    .line 904
    shr-int/lit8 v0, v2, 0x4

    add-int/lit8 v0, v0, -0xc

    .line 905
    and-int/lit8 v1, v2, 0xf

    add-int/lit8 v1, v1, 0x1

    .line 906
    int-to-double v2, v0

    int-to-double v0, v1

    div-double v0, v2, v0

    goto :goto_0

    .line 907
    :cond_5
    const/16 v3, 0x300

    if-ge v2, v3, :cond_7

    .line 910
    shr-int/lit8 v0, v2, 0x5

    add-int/lit8 v1, v0, -0xe

    .line 911
    and-int/lit8 v0, v2, 0x1f

    add-int/lit8 v0, v0, 0x2

    .line 912
    int-to-double v2, v1

    move v6, v0

    move-wide v0, v2

    move v2, v6

    .line 915
    :goto_1
    const/4 v3, 0x4

    if-lt v2, v3, :cond_6

    .line 916
    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v0

    .line 917
    add-int/lit8 v0, v2, -0x4

    move v2, v0

    move-wide v0, v4

    goto :goto_1

    .line 919
    :cond_6
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 927
    :pswitch_0
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    .line 928
    goto :goto_0

    .line 921
    :pswitch_1
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    .line 922
    goto :goto_0

    .line 924
    :pswitch_2
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 925
    goto :goto_0

    .line 935
    :cond_7
    const/16 v3, 0x324

    if-ge v2, v3, :cond_8

    .line 937
    shr-int/lit8 v0, v2, 0x2

    add-int/lit16 v0, v0, -0xbf

    .line 938
    and-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    .line 940
    packed-switch v1, :pswitch_data_1

    .line 958
    :goto_2
    int-to-double v0, v0

    goto :goto_0

    .line 942
    :pswitch_3
    const v1, 0xc5c100

    mul-int/2addr v0, v1

    .line 943
    goto :goto_2

    .line 945
    :pswitch_4
    const v1, 0x34bc0

    mul-int/2addr v0, v1

    .line 946
    goto :goto_2

    .line 948
    :pswitch_5
    mul-int/lit16 v0, v0, 0xe10

    .line 949
    goto :goto_2

    .line 951
    :pswitch_6
    mul-int/lit8 v0, v0, 0x3c

    .line 952
    goto :goto_2

    .line 959
    :cond_8
    const/16 v3, 0x33c

    if-ge v2, v3, :cond_0

    .line 961
    add-int/lit16 v0, v2, -0x324

    .line 962
    and-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 963
    const/16 v2, 0x14

    shr-int/lit8 v0, v0, 0x2

    shl-int v0, v2, v0

    .line 964
    int-to-double v2, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    goto/16 :goto_0

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 940
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public hasBinaryProperty(II)Z
    .locals 1

    .prologue
    .line 410
    if-ltz p2, :cond_0

    const/16 v0, 0x3d

    if-gt v0, p2, :cond_1

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->binProps:[Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result v0

    goto :goto_0
.end method

.method public upropsvec_addPropertyStarts(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .prologue
    .line 1422
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty;->m_additionalTrie_:Lcom/ibm/icu/impl/Trie2_16;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1426
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v2, :cond_0

    .line 1427
    iget v0, v0, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0

    .line 1430
    :cond_0
    return-void
.end method
