.class final enum Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;
.super Ljava/lang/Enum;
.source "ActivityTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

.field public static final enum foot:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

.field public static final enum motion:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

.field public static final enum still:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

.field public static final enum unknown:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    const-string/jumbo v1, "motion"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->motion:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    new-instance v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    const-string/jumbo v1, "foot"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->foot:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    new-instance v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    const-string/jumbo v1, "still"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->still:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    new-instance v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    const-string/jumbo v1, "unknown"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->unknown:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    sget-object v1, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->motion:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->foot:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->still:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->unknown:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->$VALUES:[Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->$VALUES:[Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    return-object v0
.end method
