.class public abstract Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;
.source "BaseTextSubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;


# static fields
.field protected static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field protected static final START_TIME_TRASHOLD:I = 0x7530


# instance fields
.field protected mAspectExtent:Ljava/lang/String;

.field protected mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

.field protected final mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field protected final mDeviceDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field protected mPixelAspectRatio:Ljava/lang/String;

.field protected final mRegionDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field protected final mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/Region;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

.field protected final mTextBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected mTickRate:D

.field protected mTimeBase:Ljava/lang/String;

.field protected final mUserDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field protected final mVideoAspectRatio:F


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p6

    move-wide v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStyles:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 112
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->createDefaults()V

    .line 113
    iput p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mVideoAspectRatio:F

    .line 114
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mUserDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 115
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegionDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 116
    invoke-static {p3, p4}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getDeviceDefaultTextStyle(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDeviceDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->createDefaults()V

    .line 118
    return-void
.end method

.method private compareBlockTime(JI)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 546
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v2

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_0

    .line 548
    const-string/jumbo v0, "nf_subtitles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is higher than numbet of blocks  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    monitor-exit v2

    move v0, v1

    .line 566
    :goto_0
    return v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 552
    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisible(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 557
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getStart()J

    move-result-wide v4

    cmp-long v0, v4, p1

    if-gez v0, :cond_2

    .line 561
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 566
    :cond_2
    const/4 v0, 0x1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private findIndex(J)I
    .locals 5

    .prologue
    .line 484
    const-wide/16 v0, 0x7530

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 485
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Less than treshold, return 0"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const/4 v0, 0x0

    .line 512
    :cond_0
    return v0

    .line 489
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Try to guess"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->search(J)I

    move-result v0

    .line 492
    if-lez v0, :cond_0

    .line 493
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Lets see if index is first in array or just first found"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    add-int/lit8 v1, v0, -0x1

    .line 495
    :goto_0
    if-lez v1, :cond_0

    .line 496
    invoke-direct {p0, p1, p2, v1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->compareBlockTime(JI)I

    move-result v2

    if-nez v2, :cond_0

    .line 501
    add-int/lit8 v0, v1, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    goto :goto_0
.end method

.method private getLastKnownPosition(J)I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    if-gez v0, :cond_0

    .line 473
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->findIndex(J)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    .line 475
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    return v0
.end method

.method private parseBody(Lorg/w3c/dom/Element;)V
    .locals 6

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Body element can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing body started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-static {p1, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 324
    const-string/jumbo v1, "div"

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 325
    if-nez v1, :cond_1

    .line 326
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "DIV element not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-static {v1, p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    .line 336
    const-string/jumbo v0, "p"

    invoke-interface {v1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 337
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 338
    :cond_2
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "P element(s) not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 343
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 344
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_4

    .line 345
    new-instance v4, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v5, 0x0

    invoke-direct {v4, v0, p0, v2, v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;-><init>(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V

    .line 346
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v5

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    monitor-exit v5

    .line 342
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 350
    :cond_4
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v4, "Node is not instance of element for P!"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 354
    :cond_5
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing body done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseHead(Lorg/w3c/dom/Element;)V
    .locals 2

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Head element can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    const-string/jumbo v0, "use"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->fromNccpCode(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    .line 204
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseStyling(Lorg/w3c/dom/Element;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseRegions(Lorg/w3c/dom/Element;)V

    .line 206
    return-void
.end method

.method private parseRegions(Lorg/w3c/dom/Element;)V
    .locals 5

    .prologue
    .line 210
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing regions started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string/jumbo v0, "layout"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 213
    if-nez v0, :cond_0

    .line 214
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Layout element not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string/jumbo v1, "region"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 220
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Region element(s) not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 225
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 226
    instance-of v3, v0, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_5

    .line 227
    check-cast v0, Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-static {p0, v0, v3, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->createRegion(Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    .line 228
    if-nez v0, :cond_4

    .line 229
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Region not found!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 230
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 238
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 242
    :cond_5
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Node is not instance of element for region!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 246
    :cond_6
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing regions done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseStyling(Lorg/w3c/dom/Element;)V
    .locals 5

    .prologue
    .line 251
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing styling started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string/jumbo v0, "styling"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getFirstFoundElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 254
    if-nez v0, :cond_0

    .line 255
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Styling element not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string/jumbo v1, "style"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 259
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 260
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Style element(s) not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 265
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 266
    instance-of v3, v0, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_5

    .line 268
    check-cast v0, Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-static {v0, p0, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 269
    if-nez v0, :cond_4

    .line 270
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Style not found!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 271
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 276
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStyles:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 282
    :cond_5
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v3, "Node is not instance of element for style!"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 286
    :cond_6
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Parsing styling done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseTt(Lorg/w3c/dom/Element;)V
    .locals 6

    .prologue
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Root element can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    const-string/jumbo v0, "ttp:tickRate"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 165
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 167
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_2

    .line 168
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Tickrate defaults to 1000"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTickRate:D

    .line 183
    :goto_0
    const-string/jumbo v0, "ttp:pixelAspectRatio"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mPixelAspectRatio:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "tts:extent"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mAspectExtent:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "ttp:cellResolution"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mAspectExtent:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mPixelAspectRatio:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mVideoAspectRatio:F

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    .line 189
    :cond_1
    return-void

    .line 171
    :cond_2
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Tickrate calculate"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    div-double v0, v4, v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTickRate:D

    goto :goto_0

    .line 175
    :cond_3
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Tickrate defaults to 1000 on empty tag"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTickRate:D

    goto :goto_0
.end method

.method private search(J)I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 517
    .line 518
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    .line 519
    :goto_0
    if-lt v0, v1, :cond_2

    .line 521
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 522
    invoke-direct {p0, p1, p2, v2}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->compareBlockTime(JI)I

    move-result v4

    .line 523
    if-nez v4, :cond_0

    move v0, v2

    .line 534
    :goto_1
    return v0

    .line 525
    :cond_0
    if-gez v4, :cond_1

    .line 527
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 530
    :cond_1
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 534
    goto :goto_1
.end method


# virtual methods
.method protected createDefaults()V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegionDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDeviceDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 127
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Default text style %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    return-void
.end method

.method public getCellResolution()Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    return-object v0
.end method

.method public getDeviceDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDeviceDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getNamedRegion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
    .locals 1

    .prologue
    .line 439
    if-nez p1, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    goto :goto_0
.end method

.method public getNamedStyle(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    goto :goto_0
.end method

.method public declared-synchronized getNumberOfDisplayedSubtitles()I
    .locals 4

    .prologue
    .line 641
    monitor-enter p0

    const/4 v0, 0x0

    .line 642
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 643
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 644
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getNumberOfDisplays()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 645
    goto :goto_0

    .line 646
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    monitor-exit p0

    return v1

    .line 646
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 641
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumberOfSubtitlesExpectedToBeDisplayed()I
    .locals 8

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 616
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 635
    :goto_0
    monitor-exit p0

    return v0

    .line 619
    :cond_0
    const/4 v1, 0x0

    .line 621
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 622
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 623
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisibleInGivenTimeRange(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 626
    goto :goto_1

    .line 627
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    :try_start_3
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/2addr v0, v1

    .line 635
    goto :goto_0

    .line 627
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 612
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getRegionDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegionDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getRegions()[Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 459
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    .line 461
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mRegions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    goto :goto_0
.end method

.method public getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mSubtitleProfile:Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    return-object v0
.end method

.method public getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;
    .locals 13

    .prologue
    .line 364
    const-wide/16 v0, 0x7d0

    add-long v6, p1, v0

    .line 365
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 366
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->getLastKnownPosition(J)I

    move-result v0

    .line 378
    const/4 v1, 0x0

    .line 380
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v5

    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    move v2, v0

    .line 382
    :goto_0
    if-ge v2, v8, :cond_0

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 384
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->getStart()J

    move-result-wide v10

    cmp-long v9, v10, v6

    if-lez v9, :cond_1

    .line 385
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Subtitle block start is in future more than 2 sec, break search"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    .line 405
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;

    const/16 v5, 0x7d0

    move-object v2, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Ljava/util/List;Ljava/util/List;IJ)V

    return-object v1

    .line 388
    :cond_1
    :try_start_1
    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisible(J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 389
    if-nez v1, :cond_2

    .line 393
    const/4 v1, 0x1

    .line 394
    iput v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mIndexOfLastSearch:I

    .line 396
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 382
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 397
    :cond_3
    invoke-interface {v0, p1, p2, v6, v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisibleInGivenTimeRange(JJ)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 398
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v1

    goto :goto_1

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getTextStyleDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mDefault:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getTickRate()D
    .locals 2

    .prologue
    .line 415
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTickRate:D

    return-wide v0
.end method

.method public getTimeBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTimeBase:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mUserDefaults:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 140
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "==> Subtitle parsing started..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Subtitle data xml is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/XmlDomUtils;->createDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseTt(Lorg/w3c/dom/Element;)V

    .line 148
    const-string/jumbo v1, "head"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getChildElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseHead(Lorg/w3c/dom/Element;)V

    .line 149
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Ready to serve subtitles..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mReady:Z

    .line 151
    const-string/jumbo v1, "body"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/XmlDomUtils;->getChildElementByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->parseBody(Lorg/w3c/dom/Element;)V

    .line 152
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "==> Subtitle parsing completed."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public declared-synchronized seeked(I)V
    .locals 8

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleParser;->seeked(I)V

    .line 590
    const/4 v1, 0x0

    .line 592
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 593
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mTextBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    .line 595
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStartPlayPositionInTitleInMs:J

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mLastRenderedPositionInTitleInMs:J

    invoke-interface {v0, v4, v5, v6, v7}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->isVisibleInGivenTimeRange(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    add-int/lit8 v1, v1, 0x1

    .line 598
    :cond_0
    int-to-long v4, p1

    invoke-interface {v0, v4, v5}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;->seeked(J)V

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 588
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 600
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 601
    :try_start_4
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mNumberOfSubtitlesExpectedToBeDisplayed:I

    .line 602
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;->mStartPlayPositionInTitleInMs:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 607
    monitor-exit p0

    return-void
.end method
