.class public Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser",
        "<",
        "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MpdParser"


# instance fields
.field private final contentId:Ljava/lang/String;

.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->contentId:Ljava/lang/String;

    .line 78
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static checkContentTypeConsistency(II)I
    .locals 1
    .param p0, "firstType"    # I
    .param p1, "secondType"    # I

    .prologue
    const/4 v0, -0x1

    .line 720
    if-ne p0, v0, :cond_1

    move p0, p1

    .line 726
    .end local p0    # "firstType":I
    :cond_0
    :goto_0
    return p0

    .line 722
    .restart local p0    # "firstType":I
    :cond_1
    if-eq p1, v0, :cond_0

    .line 725
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "firstLanguage"    # Ljava/lang/String;
    .param p1, "secondLanguage"    # Ljava/lang/String;

    .prologue
    .line 698
    if-nez p0, :cond_1

    move-object p0, p1

    .line 704
    .end local p0    # "firstLanguage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 700
    .restart local p0    # "firstLanguage":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    .line 703
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_0
.end method

.method private static getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "containerMimeType"    # Ljava/lang/String;
    .param p1, "codecs"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 652
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 674
    .end local p0    # "containerMimeType":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 654
    .restart local p0    # "containerMimeType":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 655
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 656
    :cond_2
    const-string v1, "application/x-rawcc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 657
    if-eqz p1, :cond_5

    .line 658
    const-string v1, "cea708"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 659
    const-string p0, "application/cea-708"

    goto :goto_0

    .line 660
    :cond_3
    const-string v1, "eia608"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "cea608"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 661
    :cond_4
    const-string p0, "application/cea-608"

    goto :goto_0

    :cond_5
    move-object p0, v0

    .line 664
    goto :goto_0

    .line 665
    :cond_6
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 667
    const-string v1, "application/mp4"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 668
    const-string v1, "stpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 669
    const-string p0, "application/ttml+xml"

    goto :goto_0

    .line 670
    :cond_7
    const-string v1, "wvtt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 671
    const-string p0, "application/x-mp4vtt"

    goto :goto_0

    :cond_8
    move-object p0, v0

    .line 674
    goto :goto_0
.end method

.method private static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 684
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "parentBaseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 770
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 759
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 763
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 749
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 753
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 7
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "defaultValue"    # F

    .prologue
    .line 731
    move v1, p1

    .line 732
    .local v1, "frameRate":F
    const/4 v5, 0x0

    const-string v6, "frameRate"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "frameRateAttribute":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 734
    sget-object v5, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 735
    .local v3, "frameRateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 736
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 737
    .local v4, "numerator":I
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "denominatorString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 739
    int-to-float v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 745
    .end local v0    # "denominatorString":Ljava/lang/String;
    .end local v3    # "frameRateMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "numerator":I
    :cond_0
    :goto_0
    return v1

    .line 741
    .restart local v0    # "denominatorString":Ljava/lang/String;
    .restart local v3    # "frameRateMatcher":Ljava/util/regex/Matcher;
    .restart local v4    # "numerator":I
    :cond_1
    int-to-float v1, v4

    goto :goto_0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 774
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 779
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 784
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 1
    .param p1, "id"    # I
    .param p2, "contentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;"
        }
    .end annotation

    .prologue
    .line 287
    .local p3, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;)V

    return-object v0
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "containerMimeType"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "frameRate"    # F
    .param p6, "audioChannels"    # I
    .param p7, "audioSamplingRate"    # I
    .param p8, "bitrate"    # I
    .param p9, "language"    # Ljava/lang/String;
    .param p10, "codecs"    # Ljava/lang/String;

    .prologue
    .line 416
    move-object/from16 v0, p10

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "sampleMimeType":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 418
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p10

    move/from16 v6, p8

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v2 .. v10}, Lcom/google/android/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 431
    :goto_0
    return-object v2

    .line 421
    :cond_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p10

    move/from16 v6, p8

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/google/android/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    goto :goto_0

    .line 424
    :cond_1
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p10

    move/from16 v6, p8

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    goto :goto_0

    .line 428
    :cond_2
    move-object/from16 v0, p10

    move/from16 v1, p8

    invoke-static {p1, p2, v0, v4, v1}, Lcom/google/android/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    goto :goto_0

    .line 431
    :cond_3
    move-object/from16 v0, p10

    move/from16 v1, p8

    invoke-static {p1, p2, v0, v4, v1}, Lcom/google/android/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    goto :goto_0
.end method

.method protected buildMediaPresentationDescription(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 17
    .param p1, "availabilityStartTime"    # J
    .param p3, "durationMs"    # J
    .param p5, "minBufferTimeMs"    # J
    .param p7, "dynamic"    # Z
    .param p8, "minUpdateTimeMs"    # J
    .param p10, "timeShiftBufferDepthMs"    # J
    .param p12, "suggestedPresentationDelayMs"    # J
    .param p14, "utcTiming"    # Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .param p15, "location"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    .prologue
    .line 175
    .local p16, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildPeriod(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;"
        }
    .end annotation

    .prologue
    .line 220
    .local p4, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method protected buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 9
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "urlText"    # Ljava/lang/String;
    .param p3, "rangeStart"    # J
    .param p5, "rangeLength"    # J

    .prologue
    .line 626
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method protected buildRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 5
    .param p1, "representationInfo"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .param p2, "contentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    .prologue
    .line 437
    .local p3, "extraDrmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    .line 438
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    .line 439
    .local v0, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 440
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    new-instance v2, Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format;->copyWithDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 443
    :cond_0
    const-wide/16 v2, -0x1

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;

    invoke-static {p2, v2, v3, v1, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->newInstance(Ljava/lang/String;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v2

    return-object v2
.end method

.method protected buildSegmentList(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 12
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # I
    .param p7, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;"
        }
    .end annotation

    .prologue
    .line 523
    .local p9, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .local p10, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildSegmentTemplate(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 14
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # I
    .param p7, "duration"    # J
    .param p10, "initializationTemplate"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .param p11, "mediaTemplate"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .param p12, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .prologue
    .line 564
    .local p9, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;
    .locals 1
    .param p1, "elapsedTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 588
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJLjava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 11
    .param p1, "initialization"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "baseUrl"    # Ljava/lang/String;
    .param p7, "indexStart"    # J
    .param p9, "indexLength"    # J

    .prologue
    .line 479
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJLjava/lang/String;JJ)V

    return-object v0
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 1
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getContentType(Lcom/google/android/exoplayer2/Format;)I
    .locals 4
    .param p1, "format"    # Lcom/google/android/exoplayer2/Format;

    .prologue
    const/4 v1, -0x1

    .line 300
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 301
    .local v0, "sampleMimeType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 303
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    const/4 v1, 0x2

    goto :goto_0

    .line 305
    :cond_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    const/4 v1, 0x1

    goto :goto_0

    .line 307
    :cond_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "application/x-rawcc"

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    .line 308
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    :cond_4
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 90
    .local v2, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 91
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 92
    .local v1, "eventType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string v3, "MPD"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer2/ParserException;

    const-string v4, "inputStream does not contain a valid media presentation description"

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    .end local v1    # "eventType":I
    .end local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/ParserException;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "eventType":I
    .restart local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 97
    .end local v1    # "eventType":I
    .end local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 25
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const-string v4, "id"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v20

    .line 228
    .local v20, "id":I
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v17

    .line 230
    .local v17, "contentType":I
    const/4 v4, 0x0

    const-string v5, "mimeType"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "mimeType":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "codecs"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "codecs":Ljava/lang/String;
    const-string v4, "width"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 233
    .local v9, "width":I
    const-string v4, "height"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 234
    .local v10, "height":I
    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v11

    .line 235
    .local v11, "frameRate":F
    const/4 v12, -0x1

    .line 236
    .local v12, "audioChannels":I
    const-string v4, "audioSamplingRate"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 237
    .local v13, "audioSamplingRate":I
    const/4 v4, 0x0

    const-string v5, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 238
    .local v14, "language":Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v18, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v22, "representationInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;>;"
    const/16 v24, 0x0

    .line 243
    .local v24, "seenFirstBaseUrl":Z
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 244
    const-string v4, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 245
    if-nez v24, :cond_1

    .line 246
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 247
    const/16 v24, 0x1

    .line 274
    :cond_1
    :goto_0
    const-string v4, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    new-instance v23, Ljava/util/ArrayList;

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v23, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_a

    .line 278
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->contentId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v5, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildRepresentation(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 249
    .end local v19    # "i":I
    .end local v23    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_2
    const-string v4, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 250
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v16

    .line 251
    .local v16, "contentProtection":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    if-eqz v16, :cond_1

    .line 252
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    .end local v16    # "contentProtection":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_3
    const-string v4, "ContentComponent"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 255
    const/4 v4, 0x0

    const-string v5, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 256
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    move/from16 v0, v17

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v17

    goto :goto_0

    .line 257
    :cond_4
    const-string v4, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p3

    .line 258
    invoke-virtual/range {v4 .. v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-result-object v21

    .line 260
    .local v21, "representationInfo":Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lcom/google/android/exoplayer2/Format;

    .line 261
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->getContentType(Lcom/google/android/exoplayer2/Format;)I

    move-result v4

    .line 260
    move/from16 v0, v17

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v17

    .line 262
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 263
    .end local v21    # "representationInfo":Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    :cond_5
    const-string v4, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 264
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v12

    goto/16 :goto_0

    .line 265
    :cond_6
    const-string v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 266
    check-cast p3, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    .end local p3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object p3

    .restart local p3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_0

    .line 267
    :cond_7
    const-string v4, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 268
    check-cast p3, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    .end local p3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object p3

    .restart local p3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_0

    .line 269
    :cond_8
    const-string v4, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 270
    check-cast p3, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    .end local p3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object p3

    .restart local p3    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto/16 :goto_0

    .line 271
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 282
    .restart local v19    # "i":I
    .restart local v23    # "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Representation;>;"
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v17

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildAdaptationSet(IILjava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v4

    return-object v4
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    return-void
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 633
    const-string v2, "schemeIdUri"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "schemeIdUri":Ljava/lang/String;
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "value"

    .line 635
    invoke-static {p1, v2, v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .line 637
    .local v0, "audioChannels":I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 638
    const-string v2, "AudioChannelConfiguration"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    return v0
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 9
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "data":[B
    const/4 v4, 0x0

    .line 327
    .local v4, "uuid":Ljava/util/UUID;
    const/4 v3, 0x0

    .line 328
    .local v3, "seenPsshElement":Z
    const/4 v1, 0x0

    .line 330
    .local v1, "requiresSecureDecoder":Z
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 332
    const-string v7, "cenc:pssh"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 333
    const/4 v3, 0x1

    .line 334
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 335
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v4

    .line 340
    :cond_1
    :goto_0
    const-string v7, "ContentProtection"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 341
    if-nez v3, :cond_4

    move-object v5, v6

    .line 347
    :goto_1
    return-object v5

    .line 336
    :cond_2
    const-string v7, "widevine:license"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 337
    const-string v7, "robustness_level"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "robustnessLevel":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v7, "HW"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_2

    .line 343
    .end local v2    # "robustnessLevel":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_5

    .line 344
    new-instance v5, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v6, "video/mp4"

    invoke-direct {v5, v4, v6, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    goto :goto_1

    .line 346
    :cond_5
    const-string v5, "MpdParser"

    const-string v7, "Skipped unsupported ContentProtection element"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 347
    goto :goto_1
.end method

.method protected parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, -0x1

    .line 291
    const/4 v2, 0x0

    const-string v3, "contentType"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "audio"

    .line 293
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "video"

    .line 294
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "text"

    .line 295
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 601
    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 36
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v6, "availabilityStartTime"

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    .line 105
    .local v7, "availabilityStartTime":J
    const-string v6, "mediaPresentationDuration"

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 106
    .local v9, "durationMs":J
    const-string v6, "minBufferTime"

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 107
    .local v11, "minBufferTimeMs":J
    const/4 v6, 0x0

    const-string v32, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 108
    .local v31, "typeString":Ljava/lang/String;
    if-eqz v31, :cond_3

    const-string v6, "dynamic"

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v13, 0x1

    .line 109
    .local v13, "dynamic":Z
    :goto_0
    if-eqz v13, :cond_4

    const-string v6, "minimumUpdatePeriod"

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 111
    .local v14, "minUpdateTimeMs":J
    :goto_1
    if-eqz v13, :cond_5

    const-string v6, "timeShiftBufferDepth"

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    .line 112
    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 113
    .local v16, "timeShiftBufferDepthMs":J
    :goto_2
    if-eqz v13, :cond_6

    const-string v6, "suggestedPresentationDelay"

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    .line 114
    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-static {v0, v6, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 115
    .local v18, "suggestedPresentationDelayMs":J
    :goto_3
    const/16 v20, 0x0

    .line 116
    .local v20, "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    const/16 v21, 0x0

    .line 118
    .local v21, "location":Landroid/net/Uri;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v22, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    if-eqz v13, :cond_7

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    .local v24, "nextPeriodStartMs":J
    :goto_4
    const/16 v29, 0x0

    .line 121
    .local v29, "seenEarlyAccessPeriod":Z
    const/16 v30, 0x0

    .line 123
    .local v30, "seenFirstBaseUrl":Z
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 124
    const-string v6, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 125
    if-nez v30, :cond_1

    .line 126
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 127
    const/16 v30, 0x1

    .line 151
    :cond_1
    :goto_5
    const-string v6, "MPD"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v9, v32

    if-nez v6, :cond_2

    .line 154
    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v24, v32

    if-eqz v6, :cond_e

    .line 156
    move-wide/from16 v9, v24

    .line 162
    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 163
    new-instance v6, Lcom/google/android/exoplayer2/ParserException;

    const-string v32, "No periods found."

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    .end local v13    # "dynamic":Z
    .end local v14    # "minUpdateTimeMs":J
    .end local v16    # "timeShiftBufferDepthMs":J
    .end local v18    # "suggestedPresentationDelayMs":J
    .end local v20    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .end local v21    # "location":Landroid/net/Uri;
    .end local v22    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    .end local v24    # "nextPeriodStartMs":J
    .end local v29    # "seenEarlyAccessPeriod":Z
    .end local v30    # "seenFirstBaseUrl":Z
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 109
    .restart local v13    # "dynamic":Z
    :cond_4
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_1

    .line 112
    .restart local v14    # "minUpdateTimeMs":J
    :cond_5
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 114
    .restart local v16    # "timeShiftBufferDepthMs":J
    :cond_6
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 119
    .restart local v18    # "suggestedPresentationDelayMs":J
    .restart local v20    # "utcTiming":Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .restart local v21    # "location":Landroid/net/Uri;
    .restart local v22    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/Period;>;"
    :cond_7
    const-wide/16 v24, 0x0

    goto :goto_4

    .line 129
    .restart local v24    # "nextPeriodStartMs":J
    .restart local v29    # "seenEarlyAccessPeriod":Z
    .restart local v30    # "seenFirstBaseUrl":Z
    :cond_8
    const-string v6, "UTCTiming"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 130
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v20

    goto :goto_5

    .line 131
    :cond_9
    const-string v6, "Location"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 132
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    goto :goto_5

    .line 133
    :cond_a
    const-string v6, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v29, :cond_1

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v28

    .line 135
    .local v28, "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/dash/manifest/Period;Ljava/lang/Long;>;"
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    .line 136
    .local v23, "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v32, v0

    const-wide v34, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v32, v34

    if-nez v6, :cond_c

    .line 137
    if-eqz v13, :cond_b

    .line 140
    const/16 v29, 0x1

    goto/16 :goto_5

    .line 142
    :cond_b
    new-instance v6, Lcom/google/android/exoplayer2/ParserException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unable to determine start of period "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    :cond_c
    move-object/from16 v0, v28

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 146
    .local v26, "periodDurationMs":J
    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v26, v32

    if-nez v6, :cond_d

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    .line 148
    :goto_6
    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 146
    :cond_d
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v32, v0

    add-long v24, v32, v26

    goto :goto_6

    .line 157
    .end local v23    # "period":Lcom/google/android/exoplayer2/source/dash/manifest/Period;
    .end local v26    # "periodDurationMs":J
    .end local v28    # "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer2/source/dash/manifest/Period;Ljava/lang/Long;>;"
    :cond_e
    if-nez v13, :cond_2

    .line 158
    new-instance v6, Lcom/google/android/exoplayer2/ParserException;

    const-string v32, "Unable to determine duration of static manifest."

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_f
    move-object/from16 v6, p0

    .line 166
    invoke-virtual/range {v6 .. v22}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildMediaPresentationDescription(JJJZJJJLcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v6

    return-object v6
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 17
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "defaultStartMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v12, 0x0

    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "id":Ljava/lang/String;
    const-string v12, "start"

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v12, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    .line 194
    .local v10, "startMs":J
    const-string v12, "duration"

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-static {v0, v12, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 195
    .local v6, "durationMs":J
    const/4 v9, 0x0

    .line 196
    .local v9, "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v4, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;>;"
    const/4 v8, 0x0

    .line 199
    .local v8, "seenFirstBaseUrl":Z
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 200
    const-string v12, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 201
    if-nez v8, :cond_1

    .line 202
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 203
    const/4 v8, 0x1

    .line 214
    :cond_1
    :goto_0
    const-string v12, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 216
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v11, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12

    .line 205
    :cond_2
    const-string v12, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_3
    const-string v12, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 208
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v9

    goto :goto_0

    .line 209
    :cond_4
    const-string v12, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 210
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v9

    goto :goto_0

    .line 211
    :cond_5
    const-string v12, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 212
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v9

    goto :goto_0
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 16
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "urlAttribute"    # Ljava/lang/String;
    .param p4, "rangeAttribute"    # Ljava/lang/String;

    .prologue
    .line 610
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, "urlText":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 612
    .local v6, "rangeStart":J
    const-wide/16 v8, -0x1

    .line 613
    .local v8, "rangeLength":J
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "rangeText":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 615
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 616
    .local v10, "rangeTextArray":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 617
    array-length v3, v10

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 618
    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v12, v6

    const-wide/16 v14, 0x1

    add-long v8, v12, v14

    .end local v10    # "rangeTextArray":[Ljava/lang/String;
    :cond_0
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 621
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    return-object v3
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .locals 19
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "adaptationSetMimeType"    # Ljava/lang/String;
    .param p4, "adaptationSetCodecs"    # Ljava/lang/String;
    .param p5, "adaptationSetWidth"    # I
    .param p6, "adaptationSetHeight"    # I
    .param p7, "adaptationSetFrameRate"    # F
    .param p8, "adaptationSetAudioChannels"    # I
    .param p9, "adaptationSetAudioSamplingRate"    # I
    .param p10, "adaptationSetLanguage"    # Ljava/lang/String;
    .param p11, "segmentBase"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v4, 0x0

    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "id":Ljava/lang/String;
    const-string v4, "bandwidth"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v13}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    .line 373
    .local v12, "bandwidth":I
    const-string v4, "mimeType"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "mimeType":Ljava/lang/String;
    const-string v4, "codecs"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 375
    .local v14, "codecs":Ljava/lang/String;
    const-string v4, "width"

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 376
    .local v7, "width":I
    const-string v4, "height"

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 377
    .local v8, "height":I
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v9

    .line 378
    .local v9, "frameRate":F
    move/from16 v10, p8

    .line 379
    .local v10, "audioChannels":I
    const-string v4, "audioSamplingRate"

    move-object/from16 v0, p1

    move/from16 v1, p9

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 380
    .local v11, "audioSamplingRate":I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v16, "drmSchemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/16 v18, 0x0

    .line 384
    .local v18, "seenFirstBaseUrl":Z
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 385
    const-string v4, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 386
    if-nez v18, :cond_1

    .line 387
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 388
    const/16 v18, 0x1

    .line 404
    :cond_1
    :goto_0
    const-string v4, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v4, p0

    move-object/from16 v13, p10

    .line 406
    invoke-virtual/range {v4 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v17

    .line 408
    .local v17, "format":Lcom/google/android/exoplayer2/Format;
    if-eqz p11, :cond_7

    .line 410
    :goto_1
    new-instance v4, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p11

    move-object/from16 v2, v16

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/ArrayList;)V

    return-object v4

    .line 390
    .end local v17    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_2
    const-string v4, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 391
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v10

    goto :goto_0

    .line 392
    :cond_3
    const-string v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 393
    check-cast p11, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    .end local p11    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object p11

    .restart local p11    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_0

    .line 394
    :cond_4
    const-string v4, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 395
    check-cast p11, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    .end local p11    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object p11

    .restart local p11    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_0

    .line 396
    :cond_5
    const-string v4, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 397
    check-cast p11, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    .end local p11    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object p11

    .restart local p11    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    goto :goto_0

    .line 398
    :cond_6
    const-string v4, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 399
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v15

    .line 400
    .local v15, "contentProtection":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    if-eqz v15, :cond_1

    .line 401
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 408
    .end local v15    # "contentProtection":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .restart local v17    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_7
    new-instance p11, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    .end local p11    # "segmentBase":Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
    move-object/from16 v0, p11

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 22
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "parent"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    const-string v4, "timescale"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->timescale:J

    move-wide/from16 v18, v0

    :goto_0
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 453
    .local v6, "timescale":J
    const-string v4, "presentationTimeOffset"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    move-wide/from16 v18, v0

    :goto_1
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 456
    .local v8, "presentationTimeOffset":J
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    .line 457
    .local v11, "indexStart":J
    :goto_2
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    .line 458
    .local v13, "indexLength":J
    :goto_3
    const/4 v4, 0x0

    const-string v10, "indexRange"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 459
    .local v16, "indexRangeText":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 460
    const-string v4, "-"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 461
    .local v15, "indexRange":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 462
    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    sub-long v18, v18, v11

    const-wide/16 v20, 0x1

    add-long v13, v18, v20

    .line 465
    .end local v15    # "indexRange":[Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 467
    .local v5, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    :cond_1
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 468
    const-string v4, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 469
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v5

    .line 471
    :cond_2
    const-string v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v4, p0

    move-object/from16 v10, p2

    .line 473
    invoke-virtual/range {v4 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSingleSegmentBase(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJLjava/lang/String;JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v4

    return-object v4

    .line 452
    .end local v5    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v6    # "timescale":J
    .end local v8    # "presentationTimeOffset":J
    .end local v11    # "indexStart":J
    .end local v13    # "indexLength":J
    .end local v16    # "indexRangeText":Ljava/lang/String;
    :cond_3
    const-wide/16 v18, 0x1

    goto :goto_0

    .line 453
    .restart local v6    # "timescale":J
    :cond_4
    const-wide/16 v18, 0x0

    goto :goto_1

    .line 456
    .restart local v8    # "presentationTimeOffset":J
    :cond_5
    const-wide/16 v11, 0x0

    goto :goto_2

    .line 457
    .restart local v11    # "indexStart":J
    :cond_6
    const-wide/16 v13, 0x0

    goto :goto_3

    .line 465
    .restart local v13    # "indexLength":J
    .restart local v16    # "indexRangeText":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto :goto_4
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 16
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "parent"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    const-string v2, "timescale"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->timescale:J

    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 487
    .local v4, "timescale":J
    const-string v2, "presentationTimeOffset"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->presentationTimeOffset:J

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 489
    .local v6, "presentationTimeOffset":J
    const-string v2, "duration"

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->duration:J

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 490
    .local v9, "duration":J
    const-string v13, "startNumber"

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->startNumber:I

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v13, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 492
    .local v8, "startNumber":I
    const/4 v3, 0x0

    .line 493
    .local v3, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v11, 0x0

    .line 494
    .local v11, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    const/4 v12, 0x0

    .line 497
    .local v12, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 498
    const-string v2, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 499
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    .line 508
    :cond_1
    :goto_4
    const-string v2, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    if-eqz p3, :cond_2

    .line 511
    if-eqz v3, :cond_a

    .line 512
    :goto_5
    if-eqz v11, :cond_b

    .line 513
    :goto_6
    if-eqz v12, :cond_c

    :cond_2
    :goto_7
    move-object/from16 v2, p0

    .line 516
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentList(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v2

    return-object v2

    .line 486
    .end local v3    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v4    # "timescale":J
    .end local v6    # "presentationTimeOffset":J
    .end local v8    # "startNumber":I
    .end local v9    # "duration":J
    .end local v11    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .end local v12    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    :cond_3
    const-wide/16 v14, 0x1

    goto :goto_0

    .line 487
    .restart local v4    # "timescale":J
    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_1

    .line 489
    .restart local v6    # "presentationTimeOffset":J
    :cond_5
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 490
    .restart local v9    # "duration":J
    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    .line 500
    .restart local v3    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v8    # "startNumber":I
    .restart local v11    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .restart local v12    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    :cond_7
    const-string v2, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 501
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v11

    goto :goto_4

    .line 502
    :cond_8
    const-string v2, "SegmentURL"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    if-nez v12, :cond_9

    .line 504
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .restart local v12    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;>;"
    :cond_9
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 511
    :cond_a
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    goto :goto_5

    .line 512
    :cond_b
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    goto :goto_6

    .line 513
    :cond_c
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    goto :goto_7
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 16
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "parent"    # Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    const-string v2, "timescale"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->timescale:J

    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 530
    .local v4, "timescale":J
    const-string v2, "presentationTimeOffset"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 532
    .local v6, "presentationTimeOffset":J
    const-string v2, "duration"

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 533
    .local v9, "duration":J
    const-string v14, "startNumber"

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:I

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 534
    .local v8, "startNumber":I
    const-string v14, "media"

    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v13

    .line 536
    .local v13, "mediaTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    const-string v14, "initialization"

    if-eqz p3, :cond_8

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v12

    .line 539
    .local v12, "initializationTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    const/4 v3, 0x0

    .line 540
    .local v3, "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    const/4 v11, 0x0

    .line 543
    .local v11, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 544
    const-string v2, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 545
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v3

    .line 549
    :cond_1
    :goto_6
    const-string v2, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    if-eqz p3, :cond_2

    .line 552
    if-eqz v3, :cond_a

    .line 553
    :goto_7
    if-eqz v11, :cond_b

    :cond_2
    :goto_8
    move-object/from16 v2, p0

    move-object/from16 v14, p2

    .line 556
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTemplate(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v2

    return-object v2

    .line 529
    .end local v3    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .end local v4    # "timescale":J
    .end local v6    # "presentationTimeOffset":J
    .end local v8    # "startNumber":I
    .end local v9    # "duration":J
    .end local v11    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .end local v12    # "initializationTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .end local v13    # "mediaTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    :cond_3
    const-wide/16 v14, 0x1

    goto :goto_0

    .line 530
    .restart local v4    # "timescale":J
    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_1

    .line 532
    .restart local v6    # "presentationTimeOffset":J
    :cond_5
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 533
    .restart local v9    # "duration":J
    :cond_6
    const/4 v2, 0x1

    goto :goto_3

    .line 534
    .restart local v8    # "startNumber":I
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 536
    .restart local v13    # "mediaTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 546
    .restart local v3    # "initialization":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .restart local v11    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    .restart local v12    # "initializationTemplate":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    :cond_9
    const-string v2, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v11

    goto :goto_6

    .line 552
    :cond_a
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initialization:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    goto :goto_7

    .line 553
    :cond_b
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    goto :goto_8
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 10
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v6, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;>;"
    const-wide/16 v4, 0x0

    .line 573
    .local v4, "elapsedTime":J
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 574
    const-string v7, "S"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 575
    const-string v7, "t"

    invoke-static {p1, v7, v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 576
    const-string v7, "d"

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, v7, v8, v9}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 577
    .local v2, "duration":J
    const-string v7, "r"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 578
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 579
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    add-long/2addr v4, v2

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "duration":J
    :cond_1
    const-string v7, "SegmentTimeline"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 584
    return-object v6
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 605
    const-string v0, "media"

    const-string v1, "mediaRange"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    .locals 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    .prologue
    .line 593
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "valueString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 595
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object p3

    .line 597
    .end local p3    # "defaultValue":Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;
    :cond_0
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 4
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x0

    .line 181
    const-string v2, "schemeIdUri"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "schemeIdUri":Ljava/lang/String;
    const-string v2, "value"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifestParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v2

    return-object v2
.end method
