.class public Lcom/tutusw/phonespeedup/Profiles;
.super Ljava/lang/Object;
.source "Profiles.java"


# static fields
.field public static final PROFILEID_AC:I = 0x1

.field public static final PROFILEID_BATTERYLESS:I = 0x4

.field public static final PROFILEID_CHARGING:I = 0x0

.field public static final PROFILEID_CPUTEMPGREATER:I = 0x6

.field public static final PROFILEID_FULL:I = 0x7

.field public static final PROFILEID_STANDBY:I = 0x3

.field public static final PROFILEID_TEMPGREATER:I = 0x5

.field public static final PROFILEID_USB:I = 0x2

.field public static final profileNames:[Ljava/lang/String;

.field public static final profileNamesNoSensor:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5145\u7535/\u5145\u6ee1"

    aput-object v1, v0, v3

    const-string v1, "AC\u5145\u7535/\u5145\u6ee1"

    aput-object v1, v0, v4

    const-string v1, "USB\u5145\u7535/\u5145\u6ee1"

    aput-object v1, v0, v5

    const-string v1, "\u5c4f\u5e55\u5173\u95ed"

    aput-object v1, v0, v6

    .line 15
    const-string v1, "\u7535\u6c60\u7535\u91cf < "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u7535\u6c60\u6e29\u5ea6 > "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "CPU \u6e29\u5ea6 > "

    aput-object v2, v0, v1

    .line 14
    sput-object v0, Lcom/tutusw/phonespeedup/Profiles;->profileNames:[Ljava/lang/String;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5145\u7535/\u5145\u6ee1"

    aput-object v1, v0, v3

    const-string v1, "AC\u5145\u7535/\u5145\u6ee1"

    aput-object v1, v0, v4

    const-string v1, "USB\u5145\u7535/\u5145\u6ee1"

    aput-object v1, v0, v5

    const-string v1, "\u5c4f\u5e55\u5173\u95ed"

    aput-object v1, v0, v6

    .line 18
    const-string v1, "\u7535\u6c60\u7535\u91cf < "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u7535\u6c60\u6e29\u5ea6 > "

    aput-object v2, v0, v1

    .line 17
    sput-object v0, Lcom/tutusw/phonespeedup/Profiles;->profileNamesNoSensor:[Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfileName(I)Ljava/lang/String;
    .locals 2
    .param p0, "profileId"    # I

    .prologue
    .line 22
    :try_start_0
    sget-object v1, Lcom/tutusw/phonespeedup/Profiles;->profileNames:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-object v1

    .line 23
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 24
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, ""

    goto :goto_0
.end method
