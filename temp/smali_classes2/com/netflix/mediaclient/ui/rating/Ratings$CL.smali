.class public Lcom/netflix/mediaclient/ui/rating/Ratings$CL;
.super Ljava/lang/Object;
.source "Ratings.java"


# static fields
.field public static ACTIONS:[Ljava/lang/String; = null

.field private static final EXTRA_RATED:Ljava/lang/String; = "EXTRA_RATED"

.field private static final EXTRA_WITH_DRAG:Ljava/lang/String; = "EXTRA_WITH_DRAG"

.field private static LOG_RATING_CL:Ljava/lang/String;


# instance fields
.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private final mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.LOG_RATING_CL"

    sput-object v0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->LOG_RATING_CL:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->LOG_RATING_CL:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 77
    return-void
.end method

.method private reportDatingDialogEvent(ZZ)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;-><init>(ZZLcom/netflix/mediaclient/ui/rating/Ratings$1;)V

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 102
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 103
    return-void
.end method

.method public static reportDialogDismissed(Landroid/content/Context;ZZ)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->LOG_RATING_CL:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "EXTRA_RATED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const-string/jumbo v1, "EXTRA_WITH_DRAG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 62
    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 86
    sget-object v3, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->LOG_RATING_CL:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    const-string/jumbo v3, "EXTRA_RATED"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "EXTRA_WITH_DRAG"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const-string/jumbo v2, "EXTRA_RATED"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "EXTRA_WITH_DRAG"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->reportDatingDialogEvent(ZZ)V

    .line 96
    :goto_0
    return v0

    .line 91
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/rating/Ratings;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Missing extras on %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/rating/Ratings;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "We do not support action %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    goto :goto_0
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 81
    return-void
.end method
