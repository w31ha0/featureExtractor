.class public final enum Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;
.super Ljava/lang/Enum;
.source "OfflineUnavailableReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_DISABLED_BY_SYSTEM_ID_4266:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_DISABLED_BY_SYSTEM_ID_4266_FROM_SERVER:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_DISABLED_FROM_END_POINT:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_MSL_CLIENT_DISABLED:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_NO_EXTERNAL_STORAGE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

.field public static final enum NA_WIDE_VINE_UNRECOVERABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_OFFLINE_STORAGE_NOT_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_MSL_CLIENT_DISABLED"

    invoke-direct {v0, v1, v4, v5}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_MSL_CLIENT_DISABLED:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_DISABLED_FROM_END_POINT"

    invoke-direct {v0, v1, v5, v6}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_FROM_END_POINT:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_WIDE_VINE_UNRECOVERABLE"

    invoke-direct {v0, v1, v6, v7}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_WIDE_VINE_UNRECOVERABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_NO_EXTERNAL_STORAGE"

    invoke-direct {v0, v1, v7, v8}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_NO_EXTERNAL_STORAGE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_DISABLED_BY_SYSTEM_ID_4266"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_BY_SYSTEM_ID_4266:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const-string/jumbo v1, "NA_DISABLED_BY_SYSTEM_ID_4266_FROM_SERVER"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_BY_SYSTEM_ID_4266_FROM_SERVER:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_OFFLINE_STORAGE_NOT_AVAILABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v2, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_MSL_CLIENT_DISABLED:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_FROM_END_POINT:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_WIDE_VINE_UNRECOVERABLE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_NO_EXTERNAL_STORAGE:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_BY_SYSTEM_ID_4266:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->NA_DISABLED_BY_SYSTEM_ID_4266_FROM_SERVER:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->$VALUES:[Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->mValue:I

    .line 29
    return-void
.end method

.method public static getDiagnosticErrorMsg(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f090233

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const-string/jumbo v0, "(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->getCodeForLogblob()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason$1;->$SwitchMap$com$netflix$mediaclient$service$offline$agent$OfflineUnavailableReason:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 52
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    const v1, 0x7f09022c

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_1
    const v1, 0x7f090234

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_2
    const v1, 0x7f0901e6

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_3
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_4
    const v1, 0x7f0901e5

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_5
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->$VALUES:[Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    return-object v0
.end method


# virtual methods
.method public getCodeForLogblob()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OF.NA."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
