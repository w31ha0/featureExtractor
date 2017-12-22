.class public final enum Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
.super Ljava/lang/Enum;
.source "IrisNotificationSummary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

.field public static final enum NEW_SEASON_ALERT:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NewSeasonAlert"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    const-string/jumbo v1, "NEW_SEASON_ALERT"

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    sget-object v1, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->$VALUES:[Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    return-object v0
.end method

.method public static values()[Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->$VALUES:[Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    invoke-virtual {v0}, [Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    return-object v0
.end method
