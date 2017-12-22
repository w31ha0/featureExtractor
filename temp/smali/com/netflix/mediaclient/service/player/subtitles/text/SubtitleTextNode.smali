.class public final Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;
.super Ljava/lang/Object;
.source "SubtitleTextNode.java"


# instance fields
.field private mLineBreaks:I

.field private mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

.field private mText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    .line 38
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->mText:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->mLineBreaks:I

    .line 40
    return-void
.end method


# virtual methods
.method public getLineBreaks()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->mLineBreaks:I

    return v0
.end method

.method public getStyle()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SubtitleTextNode [mStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->mStyle:Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mLineBreaks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/SubtitleTextNode;->mLineBreaks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
