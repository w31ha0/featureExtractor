.class public Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;
.super Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;
.source "TextSubtitleBlock.java"


# static fields
.field public static final BEGIN:Ljava/lang/String; = "begin"

.field public static final END:Ljava/lang/String; = "end"

.field public static final ID:Ljava/lang/String; = "xml:id"

.field public static final REGION:Ljava/lang/String; = "region"


# instance fields
.field protected mDisplayed:Z

.field protected mNumberOfDisplays:I

.field private mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

.field private mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private mTextNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalNumberOfLines:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;)V
    .locals 4

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 90
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTextNodes:Ljava/util/List;

    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "P can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    if-nez p2, :cond_1

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parser can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    const-string/jumbo v0, "xml:id"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 102
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "Block id is not specified, it will be faked."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    invoke-direct {p0, p2, p4, p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->parseRegion(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;Lorg/w3c/dom/Element;)V

    .line 107
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 108
    const-string/jumbo v0, "begin"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getTickRate()D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->parseTime(Ljava/lang/String;D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStart:J

    .line 109
    const-string/jumbo v0, "end"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getTickRate()D

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->parseTime(Ljava/lang/String;D)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mEnd:J

    .line 115
    invoke-direct {p0, p2, p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->parseTextNodes(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Element;)V

    .line 122
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getUserDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Use user overide for mMaxFontSizeMultiplier"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    .line 127
    :cond_3
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 128
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "Max font size multplier set to 100! "

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    .line 131
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 125
    goto :goto_0
.end method

.method private handleSpanNode(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Element;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 207
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v2, "SPAN node, create subtitle block"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {p2, p1, p4}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->createInstanceFromContainer(Lorg/w3c/dom/Element;Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    .line 211
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    move v0, v1

    .line 212
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 213
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 214
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 215
    invoke-direct {p0, p1, v4, p3, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleXmlElement(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result p3

    .line 212
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 217
    invoke-direct {p0, p1, v4, p3, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleTextNode(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    move p3, v1

    .line 218
    goto :goto_1

    .line 226
    :cond_2
    return p3
.end method

.method private handleTextNode(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V
    .locals 3

    .prologue
    .line 231
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Text node, create subtitle block"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    .line 233
    if-eqz p4, :cond_1

    .line 234
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0, p4}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 235
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->merge(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    .line 240
    :cond_0
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTextNodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->updateBlockContainerDimensions(Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;)V

    .line 243
    return-void

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    if-eqz v1, :cond_0

    .line 237
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    goto :goto_0
.end method

.method private handleXmlElement(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I
    .locals 2

    .prologue
    .line 188
    check-cast p2, Lorg/w3c/dom/Element;

    .line 189
    invoke-static {p2}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParserHelper;->isBreak(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Break line, increase br counter"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    add-int/lit8 p3, p3, 0x1

    .line 198
    :cond_0
    :goto_0
    return p3

    .line 192
    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParserHelper;->isSpan(Lorg/w3c/dom/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleSpanNode(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Element;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result p3

    goto :goto_0
.end method

.method private parseRegion(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lcom/netflix/mediaclient/service/player/subtitles/text/Region;Lorg/w3c/dom/Element;)V
    .locals 2

    .prologue
    .line 135
    const-string/jumbo v0, "region"

    invoke-interface {p3, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    if-eqz p2, :cond_1

    .line 138
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Region is not specified. Use body region."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Region is not specified and body region is not provided. Use default region."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_2
    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;->getNamedRegion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private parseTextNodes(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Element;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 169
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 170
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 171
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 172
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-direct {p0, p1, v4, v2, v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleXmlElement(Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)I

    move-result v2

    .line 169
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 174
    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v2, v5}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->handleTextNode(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;Lorg/w3c/dom/Node;ILcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;)V

    move v2, v1

    .line 175
    goto :goto_1

    .line 182
    :cond_2
    return-void
.end method

.method private parseTime(Ljava/lang/String;D)J
    .locals 2

    .prologue
    .line 270
    invoke-static {p1, p2, p3}, Lcom/netflix/mediaclient/util/SubtitleUtils;->parseTime(Ljava/lang/String;D)J

    move-result-wide v0

    return-wide v0
.end method

.method private updateBlockContainerDimensions(Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;)V
    .locals 3

    .prologue
    .line 253
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTotalNumberOfLines:I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getLineBreaks()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTotalNumberOfLines:I

    .line 255
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    const-string/jumbo v0, "nf_subtitles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Font size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 260
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;->getFontSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    .line 262
    :cond_1
    return-void
.end method


# virtual methods
.method public displayed()V
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mDisplayed:Z

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mDisplayed:Z

    .line 377
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mNumberOfDisplays:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mNumberOfDisplays:I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 289
    if-ne p0, p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 293
    goto :goto_0

    .line 295
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;

    if-nez v2, :cond_3

    move v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    .line 299
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 300
    iget-object v2, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 301
    goto :goto_0

    .line 303
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 304
    goto :goto_0
.end method

.method public getNumberOfDisplays()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mNumberOfDisplays:I

    return v0
.end method

.method public getRegion()Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    return-object v0
.end method

.method public getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getTextNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTextNodes:Ljava/util/List;

    return-object v0
.end method

.method public getTotalNumberOfLines()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTotalNumberOfLines:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 278
    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 281
    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public seeked(J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mEnd:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 386
    :goto_0
    if-eqz v0, :cond_0

    .line 387
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mDisplayed:Z

    .line 389
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 385
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TextSubtitleBlock [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mRegion:Lcom/netflix/mediaclient/service/player/subtitles/text/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTextNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTextNodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTotalNumberOfLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mTotalNumberOfLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMaxFontSizeMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mMaxFontSizeMultiplier:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wasDisplayed()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;->mDisplayed:Z

    return v0
.end method
