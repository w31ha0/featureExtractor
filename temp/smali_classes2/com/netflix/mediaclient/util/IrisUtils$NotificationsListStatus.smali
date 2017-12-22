.class public final enum Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;
.super Ljava/lang/Enum;
.source "IrisUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

.field public static final enum HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

.field public static final enum NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

.field public static final enum READ_ONLY:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    const-string/jumbo v1, "NO_MESSAGES"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    new-instance v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    const-string/jumbo v1, "READ_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->READ_ONLY:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    new-instance v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    const-string/jumbo v1, "HAS_UNREAD_MESSAGES"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    sget-object v1, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->READ_ONLY:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->HAS_UNREAD_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->$VALUES:[Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->$VALUES:[Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    return-object v0
.end method
