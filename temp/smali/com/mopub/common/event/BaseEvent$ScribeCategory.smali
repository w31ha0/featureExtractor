.class public final enum Lcom/mopub/common/event/BaseEvent$ScribeCategory;
.super Ljava/lang/Enum;
.source "BaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/event/BaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScribeCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/common/event/BaseEvent$ScribeCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/event/BaseEvent$ScribeCategory;

.field public static final enum EXCHANGE_CLIENT_ERROR:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

.field public static final enum EXCHANGE_CLIENT_EVENT:Lcom/mopub/common/event/BaseEvent$ScribeCategory;


# instance fields
.field private final mScribeCategory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    const-string v1, "EXCHANGE_CLIENT_EVENT"

    const-string v2, "exchange_client_event"

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/common/event/BaseEvent$ScribeCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;->EXCHANGE_CLIENT_EVENT:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    .line 18
    new-instance v0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    const-string v1, "EXCHANGE_CLIENT_ERROR"

    const-string v2, "exchange_client_error"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/common/event/BaseEvent$ScribeCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;->EXCHANGE_CLIENT_ERROR:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$ScribeCategory;->EXCHANGE_CLIENT_EVENT:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/event/BaseEvent$ScribeCategory;->EXCHANGE_CLIENT_ERROR:Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;->$VALUES:[Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "scribeCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;->mScribeCategory:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$ScribeCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    return-object v0
.end method

.method public static values()[Lcom/mopub/common/event/BaseEvent$ScribeCategory;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;->$VALUES:[Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    invoke-virtual {v0}, [Lcom/mopub/common/event/BaseEvent$ScribeCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/event/BaseEvent$ScribeCategory;

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mopub/common/event/BaseEvent$ScribeCategory;->mScribeCategory:Ljava/lang/String;

    return-object v0
.end method
