.class public final enum Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;
.super Ljava/lang/Enum;
.source "PreAppAgentEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field public static final enum ACCOUNT_DEACTIVATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field public static final enum ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field public static final enum CW_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field public static final enum IQ_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

.field public static final enum NON_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const-string/jumbo v1, "ALL_MEMBER_UPDATED"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const-string/jumbo v1, "CW_UPDATED"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->CW_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const-string/jumbo v1, "IQ_UPDATED"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->IQ_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const-string/jumbo v1, "NON_MEMBER_UPDATED"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->NON_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    const-string/jumbo v1, "ACCOUNT_DEACTIVATED"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ACCOUNT_DEACTIVATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->CW_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->IQ_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->NON_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ACCOUNT_DEACTIVATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->$VALUES:[Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isBBUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCWUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->CW_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFirstStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isIQUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->IQ_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNonMemberListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->NON_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSecondStandardListUpdated(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ALL_MEMBER_UPDATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shouldClearData(Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->ACCOUNT_DEACTIVATED:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->$VALUES:[Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    return-object v0
.end method
