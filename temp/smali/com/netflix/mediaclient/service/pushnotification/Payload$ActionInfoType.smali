.class public final enum Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;
.super Ljava/lang/Enum;
.source "Payload.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

.field public static final enum EVENT_LOLOMO_REFRESH:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

.field public static final enum EVENT_MYLIST_CHANGED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

.field public static final enum EVENT_NOTIFICATION_LIST_CHANGED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

.field public static final enum EVENT_NOTIFICATION_READ:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

.field public static final enum EVENT_PLAYBACK_ENDED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 231
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    const-string/jumbo v1, "EVENT_PLAYBACK_ENDED"

    const-string/jumbo v2, "P"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_PLAYBACK_ENDED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    .line 232
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    const-string/jumbo v1, "EVENT_MYLIST_CHANGED"

    const-string/jumbo v2, "M"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_MYLIST_CHANGED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    .line 233
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    const-string/jumbo v1, "EVENT_NOTIFICATION_LIST_CHANGED"

    const-string/jumbo v2, "N"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_NOTIFICATION_LIST_CHANGED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    .line 234
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    const-string/jumbo v1, "EVENT_NOTIFICATION_READ"

    const-string/jumbo v2, "NR"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_NOTIFICATION_READ:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    .line 235
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    const-string/jumbo v1, "EVENT_LOLOMO_REFRESH"

    const-string/jumbo v2, "NLL"

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_LOLOMO_REFRESH:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    .line 236
    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->UNKNOWN:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    .line 229
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_PLAYBACK_ENDED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_MYLIST_CHANGED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_NOTIFICATION_LIST_CHANGED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_NOTIFICATION_READ:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_LOLOMO_REFRESH:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->UNKNOWN:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->$VALUES:[Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 241
    iput-object p3, p0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->value:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;
    .locals 5

    .prologue
    .line 245
    invoke-static {}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->values()[Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 246
    iget-object v4, v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    :goto_1
    return-object v0

    .line 245
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 250
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->UNKNOWN:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    goto :goto_1
.end method

.method public static isLolomoRefreshEvent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_LOLOMO_REFRESH:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMylistChangedEvent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_MYLIST_CHANGED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationListChangedEvent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_NOTIFICATION_LIST_CHANGED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationReadEvent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_NOTIFICATION_READ:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPlayEndEvent(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->EVENT_PLAYBACK_ENDED:Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;
    .locals 1

    .prologue
    .line 229
    const-class v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->$VALUES:[Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/Payload$ActionInfoType;->value:Ljava/lang/String;

    return-object v0
.end method
