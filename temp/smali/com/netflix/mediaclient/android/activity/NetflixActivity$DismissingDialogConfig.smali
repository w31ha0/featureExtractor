.class public final enum Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
.super Ljava/lang/Enum;
.source "NetflixActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field public static final enum dismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field public static final enum doNotDismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

.field public static final enum doNotDismissOnStopOnce:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2934
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const-string/jumbo v1, "dismissOnStop"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->dismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 2935
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const-string/jumbo v1, "doNotDismissOnStop"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->doNotDismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 2936
    new-instance v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    const-string/jumbo v1, "doNotDismissOnStopOnce"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->doNotDismissOnStopOnce:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    .line 2933
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->dismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->doNotDismissOnStop:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->doNotDismissOnStopOnce:Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->$VALUES:[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

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
    .line 2933
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
    .locals 1

    .prologue
    .line 2933
    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;
    .locals 1

    .prologue
    .line 2933
    sget-object v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->$VALUES:[Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/activity/NetflixActivity$DismissingDialogConfig;

    return-object v0
.end method
