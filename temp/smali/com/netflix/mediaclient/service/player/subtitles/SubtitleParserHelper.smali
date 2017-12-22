.class public final Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParserHelper;
.super Ljava/lang/Object;
.source "SubtitleParserHelper.java"


# static fields
.field public static final BR:Ljava/lang/String; = "br"

.field public static final SPAN:Ljava/lang/String; = "span"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static isBreak(Lorg/w3c/dom/Element;)Z
    .locals 2

    .prologue
    .line 29
    if-eqz p0, :cond_0

    const-string/jumbo v0, "br"

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpan(Lorg/w3c/dom/Element;)Z
    .locals 2

    .prologue
    .line 40
    if-eqz p0, :cond_0

    const-string/jumbo v0, "span"

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
