.class public final enum Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
.super Ljava/lang/Enum;
.source "DayPeriodRules.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum AFTERNOON1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum AFTERNOON2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum EVENING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum EVENING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum MORNING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum MORNING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum NIGHT1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum NIGHT2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static final enum PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field public static VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "MIDNIGHT"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 21
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "NOON"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 22
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "MORNING1"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 23
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "AFTERNOON1"

    invoke-direct {v0, v1, v6}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 24
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "EVENING1"

    invoke-direct {v0, v1, v7}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "NIGHT1"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 26
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "MORNING2"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 27
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "AFTERNOON2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 28
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "EVENING2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 29
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "NIGHT2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 30
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "AM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 31
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    const-string/jumbo v1, "PM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 19
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->$VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 33
    invoke-static {}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->values()[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->fromStringOrNull(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    return-object v0
.end method

.method private static fromStringOrNull(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "midnight"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 48
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const-string/jumbo v0, "noon"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 38
    :cond_1
    const-string/jumbo v0, "morning1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 39
    :cond_2
    const-string/jumbo v0, "afternoon1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 40
    :cond_3
    const-string/jumbo v0, "evening1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 41
    :cond_4
    const-string/jumbo v0, "night1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT1:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 42
    :cond_5
    const-string/jumbo v0, "morning2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MORNING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 43
    :cond_6
    const-string/jumbo v0, "afternoon2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AFTERNOON2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 44
    :cond_7
    const-string/jumbo v0, "evening2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->EVENING2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 45
    :cond_8
    const-string/jumbo v0, "night2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NIGHT2:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 46
    :cond_9
    const-string/jumbo v0, "am"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->AM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_0

    .line 47
    :cond_a
    const-string/jumbo v0, "pm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->PM:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    goto/16 :goto_0

    .line 48
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->$VALUES:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0
.end method
