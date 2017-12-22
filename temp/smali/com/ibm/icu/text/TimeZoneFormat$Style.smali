.class public final enum Lcom/ibm/icu/text/TimeZoneFormat$Style;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/text/TimeZoneFormat$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

.field public static final enum ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;


# instance fields
.field final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0x100

    const/16 v4, 0x80

    .line 89
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "GENERIC_LOCATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v6}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 95
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "GENERIC_LONG"

    invoke-direct {v0, v1, v6, v7}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 101
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "GENERIC_SHORT"

    invoke-direct {v0, v1, v7, v8}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 107
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "SPECIFIC_LONG"

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 113
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "SPECIFIC_SHORT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v8, v2}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 119
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "LOCALIZED_GMT"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 125
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "LOCALIZED_GMT_SHORT"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 132
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_SHORT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 139
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_LOCAL_SHORT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 146
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_FIXED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v4}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 153
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_LOCAL_FIXED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 160
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_FULL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 167
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_BASIC_LOCAL_FULL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 174
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_EXTENDED_FIXED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 181
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_EXTENDED_LOCAL_FIXED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 188
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_EXTENDED_FULL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v4}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 195
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ISO_EXTENDED_LOCAL_FULL"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v5}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 200
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ZONE_ID"

    const/16 v2, 0x11

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 205
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "ZONE_ID_SHORT"

    const/16 v2, 0x12

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 210
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const-string/jumbo v1, "EXEMPLAR_LOCATION"

    const/16 v2, 0x13

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/TimeZoneFormat$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    .line 83
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/ibm/icu/text/TimeZoneFormat$Style;

    const/4 v1, 0x0

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ibm/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ibm/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneFormat$Style;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$Style;

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
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    iput p3, p0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->flag:I

    .line 216
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat$Style;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneFormat$Style;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$Style;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneFormat$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneFormat$Style;

    return-object v0
.end method
