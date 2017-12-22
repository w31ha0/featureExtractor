.class public final Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.source "RateTitleEndedEvent.java"


# static fields
.field private static final IS_NEW_MS:Ljava/lang/String; = "isNewMS"

.field private static final MATCH_SCORE:Ljava/lang/String; = "matchScore"

.field private static final RANK_TITLE:Ljava/lang/String; = "rankTitle"

.field private static final RATING:Ljava/lang/String; = "rating"

.field private static final RATING_TYPE:Ljava/lang/String; = "ratingType"

.field private static final UIA_NAME:Ljava/lang/String; = "rateTitle"


# instance fields
.field private mMatchScore:I

.field private mNewMS:Z

.field private mRankTitle:Ljava/lang/Integer;

.field private mRating:I

.field private mRatingType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;ILjava/lang/String;IZ)V
    .locals 12

    .prologue
    .line 74
    const-string/jumbo v4, "rateTitle"

    move-object v3, p0

    move-object v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 75
    move/from16 v0, p9

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRating:I

    .line 76
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRankTitle:Ljava/lang/Integer;

    .line 77
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRatingType:Ljava/lang/String;

    .line 78
    move/from16 v0, p11

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mMatchScore:I

    .line 79
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mNewMS:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 65
    const-string/jumbo v0, "rankTitle"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getIntegerObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRankTitle:Ljava/lang/Integer;

    .line 66
    const-string/jumbo v0, "rating"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRating:I

    .line 67
    const-string/jumbo v0, "ratingType"

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRatingType:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "matchScore"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mMatchScore:I

    .line 69
    const-string/jumbo v0, "isNewMS"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mNewMS:Z

    .line 70
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRankTitle:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 91
    const-string/jumbo v1, "rankTitle"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRankTitle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRatingType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 94
    const-string/jumbo v1, "ratingType"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRatingType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_1
    iget v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mMatchScore:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 97
    const-string/jumbo v1, "matchScore"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mMatchScore:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    :cond_2
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mNewMS:Z

    if-eqz v1, :cond_3

    .line 100
    const-string/jumbo v1, "isNewMS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    :cond_3
    const-string/jumbo v1, "rating"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;->mRating:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    return-object v0
.end method

.method public isMemberEvent()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method
