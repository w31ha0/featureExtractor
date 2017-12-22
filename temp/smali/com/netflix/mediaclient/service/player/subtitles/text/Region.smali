.class public Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
.super Ljava/lang/Object;
.source "Region.java"


# static fields
.field public static final DEFAULT_REGION_ID:Ljava/lang/String; = "BOTTOM_CENTER"

.field public static final DISPLAY_ALIGN:Ljava/lang/String; = "tts:displayAlign"

.field public static final EXTENT:Ljava/lang/String; = "tts:extent"

.field public static final ORIGIN:Ljava/lang/String; = "tts:origin"

.field private static final TAG:Ljava/lang/String; = "nf_subtitles"

.field public static final TEXT_ALIGN:Ljava/lang/String; = "tts:textAlign"


# instance fields
.field private mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

.field private mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

.field private mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

.field private mId:Ljava/lang/String;

.field private mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

.field private mTextStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 4

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string/jumbo v0, "xml:id"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mId:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    .line 98
    invoke-static {p2, p1, p4}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Hor alig found as attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Vert alig found as attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    .line 113
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 114
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Extent as attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 117
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 118
    const-string/jumbo v1, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Origin as attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 123
    :cond_3
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->parseStyles(Lorg/w3c/dom/Element;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    .line 128
    new-instance v2, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mTextStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 129
    if-eqz v1, :cond_4

    .line 130
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Region parsed styles found use them first"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mTextStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v2, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 134
    :cond_4
    if-eqz v0, :cond_5

    .line 135
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "Region Attribute styles found use them second"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mTextStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 139
    :cond_5
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mId:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 74
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 75
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    .line 76
    iput-object p5, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    .line 77
    iput-object p6, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    .line 78
    iput-object p7, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mTextStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 79
    return-void
.end method

.method public static createInstanceOfDefaultRegion(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
    .locals 8

    .prologue
    .line 221
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    const-string/jumbo v1, "DEFAULT_REGION"

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->ZERO:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->ZERO:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    sget-object v4, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->left:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    sget-object v5, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->top:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    return-object v0
.end method

.method public static createInstanceOfSimpleSdhRegion(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
    .locals 8

    .prologue
    .line 225
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    const-string/jumbo v1, "SIMPLE_SDH"

    sget-object v2, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->SIMPLE_SDH_EXTENT:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->ZERO:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    sget-object v4, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->left:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    sget-object v5, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->top:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    const/4 v6, 0x0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    return-object v0
.end method

.method public static createRegion(Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/BaseTextSubtitleParser;Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    return-object v0
.end method

.method private parseStyles(Lorg/w3c/dom/Element;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 6

    .prologue
    .line 143
    const-string/jumbo v0, "style"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 144
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 145
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Styles element(s) not found in region"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    .line 153
    :cond_1
    new-instance v2, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>()V

    .line 154
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 155
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 156
    instance-of v4, v0, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_2

    .line 157
    check-cast v0, Lorg/w3c/dom/Element;

    .line 158
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->addStyle(Lorg/w3c/dom/Element;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v4, "Style added"

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 161
    :cond_3
    const-string/jumbo v4, "nf_subtitles"

    const-string/jumbo v5, "Style not added, check to see if it they are region attributes."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->processRegionAttributes(Lorg/w3c/dom/Element;)V

    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 167
    goto :goto_0
.end method

.method private processRegionAttributes(Lorg/w3c/dom/Element;)V
    .locals 2

    .prologue
    .line 172
    const-string/jumbo v0, "tts:textAlign"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;->from(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    .line 180
    :cond_0
    const-string/jumbo v0, "tts:displayAlign"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;->from(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    .line 188
    :cond_1
    const-string/jumbo v0, "tts:extent"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->createInstance(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;)Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 196
    :cond_2
    const-string/jumbo v0, "tts:origin"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;->createInstance(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;)Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    .line 203
    :cond_3
    return-void
.end method


# virtual methods
.method public getExtent()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    return-object v0
.end method

.method public getHorizontalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    return-object v0
.end method

.method public getTextStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mTextStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getVerticalAlignment()Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Region [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mExtent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mExtent:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mOrigin:Lcom/netflix/mediaclient/service/player/subtitles/DoubleLength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mHorizontalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mHorizontalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/HorizontalAlignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVerticalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mVerticalAlignment:Lcom/netflix/mediaclient/service/player/subtitles/text/VerticalAlignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCellResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mCellResolution:Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTextStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Region;->mTextStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
