.class Lcom/mopub/mobileads/VastLinearXmlManager;
.super Ljava/lang/Object;
.source "VastLinearXmlManager.java"


# static fields
.field private static final CLICK_THROUGH:Ljava/lang/String; = "ClickThrough"

.field private static final CLICK_TRACKER:Ljava/lang/String; = "ClickTracking"

.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final CLOSE_LINEAR:Ljava/lang/String; = "closeLinear"

.field private static final COMPLETE:Ljava/lang/String; = "complete"

.field private static final CREATIVE_VIEW:Ljava/lang/String; = "creativeView"

.field private static final CREATIVE_VIEW_TRACKER_THRESHOLD:I = 0x0

.field private static final EVENT:Ljava/lang/String; = "event"

.field private static final FIRST_QUARTER_MARKER:F = 0.25f

.field private static final FIRST_QUARTILE:Ljava/lang/String; = "firstQuartile"

.field public static final ICON:Ljava/lang/String; = "Icon"

.field public static final ICONS:Ljava/lang/String; = "Icons"

.field private static final MEDIA_FILE:Ljava/lang/String; = "MediaFile"

.field private static final MEDIA_FILES:Ljava/lang/String; = "MediaFiles"

.field private static final MIDPOINT:Ljava/lang/String; = "midpoint"

.field private static final MID_POINT_MARKER:F = 0.5f

.field private static final OFFSET:Ljava/lang/String; = "offset"

.field private static final PAUSE:Ljava/lang/String; = "pause"

.field private static final PROGRESS:Ljava/lang/String; = "progress"

.field private static final RESUME:Ljava/lang/String; = "resume"

.field private static final SKIP:Ljava/lang/String; = "skip"

.field private static final SKIP_OFFSET:Ljava/lang/String; = "skipoffset"

.field private static final START:Ljava/lang/String; = "start"

.field private static final START_TRACKER_THRESHOLD:I = 0x0

.field private static final THIRD_QUARTER_MARKER:F = 0.75f

.field private static final THIRD_QUARTILE:Ljava/lang/String; = "thirdQuartile"

.field private static final TRACKING_EVENTS:Ljava/lang/String; = "TrackingEvents"

.field private static final VIDEO_CLICKS:Ljava/lang/String; = "VideoClicks"

.field private static final VIDEO_TRACKER:Ljava/lang/String; = "Tracking"


# instance fields
.field private final mLinearNode:Lorg/w3c/dom/Node;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "linearNode"    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    iput-object p1, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    .line 64
    return-void
.end method

.method private addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fraction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "trackers cannot be null"

    invoke-static {p1, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    const-string v1, "urls cannot be null"

    invoke-static {p2, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    .local v0, "url":Ljava/lang/String;
    new-instance v2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-direct {v2, v0, p3}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "attributeValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 384
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v4, "videoTrackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v6, "TrackingEvents"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 387
    .local v1, "trackingEvents":Lorg/w3c/dom/Node;
    if-nez v1, :cond_1

    .line 405
    :cond_0
    return-object v4

    .line 391
    :cond_1
    const-string v5, "Tracking"

    const-string v6, "event"

    .line 395
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 391
    invoke-static {v1, v5, v6, v7}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 398
    .local v3, "videoTrackerNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 399
    .local v2, "videoTrackerNode":Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "tracker":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 401
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "attributeValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 367
    .local v1, "trackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v2, "vastTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    .local v0, "tracker":Ljava/lang/String;
    new-instance v4, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v4, v0}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    .end local v0    # "tracker":Ljava/lang/String;
    :cond_0
    return-object v2
.end method


# virtual methods
.method getAbsoluteProgressTrackers()Ljava/util/List;
    .locals 18
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v9, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    const-string v14, "start"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 150
    .local v8, "startTrackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 151
    .local v13, "url":Ljava/lang/String;
    new-instance v15, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v15, v13, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v13    # "url":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v15, "TrackingEvents"

    invoke-static {v14, v15}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 155
    .local v10, "trackingEvents":Lorg/w3c/dom/Node;
    if-eqz v10, :cond_4

    .line 158
    const-string v14, "Tracking"

    const-string v15, "event"

    const-string v16, "progress"

    .line 159
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 158
    move-object/from16 v0, v16

    invoke-static {v10, v14, v15, v0}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 160
    .local v7, "progressNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    .line 161
    .local v6, "progressNode":Lorg/w3c/dom/Node;
    const-string v15, "offset"

    invoke-static {v6, v15}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "offsetString":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 165
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {v5}, Lcom/mopub/common/util/Strings;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 167
    invoke-static {v6}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, "trackingUrl":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 170
    .local v11, "trackingMilliseconds":Ljava/lang/Integer;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ltz v15, :cond_1

    .line 171
    new-instance v15, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v15, v12, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 173
    .end local v11    # "trackingMilliseconds":Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .line 174
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v15, "Failed to parse VAST progress tracker %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 181
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "offsetString":Ljava/lang/String;
    .end local v6    # "progressNode":Lorg/w3c/dom/Node;
    .end local v12    # "trackingUrl":Ljava/lang/String;
    :cond_2
    const-string v14, "Tracking"

    const-string v15, "event"

    const-string v16, "creativeView"

    .line 182
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    .line 181
    move-object/from16 v0, v16

    invoke-static {v10, v14, v15, v0}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 183
    .local v3, "creativeViewNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 184
    .local v2, "creativeViewNode":Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "creativeNodeValue":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 186
    new-instance v15, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v15, v1, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 194
    .end local v1    # "creativeNodeValue":Ljava/lang/String;
    .end local v2    # "creativeViewNode":Lorg/w3c/dom/Node;
    .end local v3    # "creativeViewNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v7    # "progressNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    :cond_4
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 195
    return-object v9
.end method

.method getClickThroughUrl()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 267
    iget-object v1, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v2, "VideoClicks"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 268
    .local v0, "videoClicks":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 271
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "ClickThrough"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getClickTrackers()Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v2, "clickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v5, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v6, "VideoClicks"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 284
    .local v4, "videoClicks":Lorg/w3c/dom/Node;
    if-nez v4, :cond_1

    .line 299
    :cond_0
    return-object v2

    .line 288
    :cond_1
    const-string v5, "ClickTracking"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 293
    .local v1, "clickTrackerNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 294
    .local v0, "clickTrackerNode":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "tracker":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 296
    new-instance v6, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v6, v3}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getFractionalProgressTrackers()Ljava/util/List;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, "percentTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    const-string v8, "firstQuartile"

    invoke-direct {p0, v8}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-direct {p0, v2, v8, v9}, Lcom/mopub/mobileads/VastLinearXmlManager;->addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V

    .line 90
    const-string v8, "midpoint"

    invoke-direct {p0, v8}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {p0, v2, v8, v9}, Lcom/mopub/mobileads/VastLinearXmlManager;->addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V

    .line 91
    const-string v8, "thirdQuartile"

    invoke-direct {p0, v8}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    const/high16 v9, 0x3f400000    # 0.75f

    invoke-direct {p0, v2, v8, v9}, Lcom/mopub/mobileads/VastLinearXmlManager;->addQuartileTrackerWithFraction(Ljava/util/List;Ljava/util/List;F)V

    .line 93
    iget-object v8, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v9, "TrackingEvents"

    invoke-static {v8, v9}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 94
    .local v5, "trackingEvents":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_1

    .line 96
    const-string v8, "Tracking"

    const-string v9, "event"

    const-string v10, "progress"

    .line 97
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 96
    invoke-static {v5, v8, v9, v10}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 99
    .local v4, "progressNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 100
    .local v3, "progressNode":Lorg/w3c/dom/Node;
    const-string v9, "offset"

    invoke-static {v3, v9}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "offsetString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Lcom/mopub/common/util/Strings;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 106
    invoke-static {v3}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "trackingUrl":Ljava/lang/String;
    :try_start_0
    const-string v9, "%"

    const-string v10, ""

    .line 109
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    div-float v6, v9, v10

    .line 110
    .local v6, "trackingFraction":F
    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_0

    .line 111
    new-instance v9, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-direct {v9, v7, v6}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    .end local v6    # "trackingFraction":F
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v9, "Failed to parse VAST progress tracker %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "offsetString":Ljava/lang/String;
    .end local v3    # "progressNode":Lorg/w3c/dom/Node;
    .end local v4    # "progressNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v7    # "trackingUrl":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 124
    return-object v2
.end method

.method getIconXmlManagers()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastIconXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v2, "iconXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v5, "Icons"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 351
    .local v3, "icons":Lorg/w3c/dom/Node;
    if-nez v3, :cond_1

    .line 360
    :cond_0
    return-object v2

    .line 355
    :cond_1
    const-string v4, "Icon"

    invoke-static {v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 356
    .local v1, "iconNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 357
    .local v0, "iconNode":Lorg/w3c/dom/Node;
    new-instance v5, Lcom/mopub/mobileads/VastIconXmlManager;

    invoke-direct {v5, v0}, Lcom/mopub/mobileads/VastIconXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getMediaXmlManagers()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastMediaXmlManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, "mediaXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastMediaXmlManager;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v5, "MediaFiles"

    invoke-static {v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 334
    .local v0, "mediaFiles":Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 343
    :cond_0
    return-object v3

    .line 338
    :cond_1
    const-string v4, "MediaFile"

    invoke-static {v0, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 339
    .local v2, "mediaNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 340
    .local v1, "mediaNode":Lorg/w3c/dom/Node;
    new-instance v5, Lcom/mopub/mobileads/VastMediaXmlManager;

    invoke-direct {v5, v1}, Lcom/mopub/mobileads/VastMediaXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getPauseTrackers()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    const-string v3, "pause"

    invoke-direct {p0, v3}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "trackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, "vastRepeatableTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "tracker":Ljava/lang/String;
    new-instance v4, Lcom/mopub/mobileads/VastTracker;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v0    # "tracker":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method getResumeTrackers()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    const-string v3, "resume"

    invoke-direct {p0, v3}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttribute(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 231
    .local v1, "trackers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "vastRepeatableTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    .local v0, "tracker":Ljava/lang/String;
    new-instance v4, Lcom/mopub/mobileads/VastTracker;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    .end local v0    # "tracker":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method getSkipOffset()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v2, p0, Lcom/mopub/mobileads/VastLinearXmlManager;->mLinearNode:Lorg/w3c/dom/Node;

    const-string v3, "skipoffset"

    invoke-static {v2, v3}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "skipOffsetString":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object v1

    .line 316
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getVideoCloseTrackers()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    const-string v1, "close"

    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "closeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v1, "closeLinear"

    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    return-object v0
.end method

.method getVideoCompleteTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    const-string v0, "complete"

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVideoSkipTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const-string v0, "skip"

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoTrackersByAttributeAsVastTrackers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
