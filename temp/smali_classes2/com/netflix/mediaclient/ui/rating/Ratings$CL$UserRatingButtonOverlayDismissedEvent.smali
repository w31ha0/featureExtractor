.class Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/Event;
.source "Ratings.java"


# static fields
.field static final CATEGORY_VALUE:Ljava/lang/String; = "uiAction"

.field static final NAME_VALUE:Ljava/lang/String; = "UserRatingButtonOverlay.dismissed"


# instance fields
.field private final mRated:Z

.field private final mWithDrag:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;-><init>()V

    .line 115
    const-string/jumbo v0, "UserRatingButtonOverlay.dismissed"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;->name:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "uiAction"

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;->category:Ljava/lang/String;

    .line 117
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;->mRated:Z

    .line 118
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;->mWithDrag:Z

    .line 119
    return-void
.end method

.method synthetic constructor <init>(ZZLcom/netflix/mediaclient/ui/rating/Ratings$1;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    :cond_0
    const-string/jumbo v1, "rated"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;->mRated:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 128
    const-string/jumbo v1, "drag"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/rating/Ratings$CL$UserRatingButtonOverlayDismissedEvent;->mWithDrag:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 129
    return-object v0
.end method
