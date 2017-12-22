.class public abstract Lcom/netflix/mediaclient/media/BaseSubtitle;
.super Ljava/lang/Object;
.source "BaseSubtitle.java"

# interfaces
.implements Lcom/netflix/mediaclient/media/Subtitle;


# static fields
.field protected static final ATTR_CAN_DEVICE_RENDER:Ljava/lang/String; = "canDeviceRender"

.field protected static final ATTR_FORCED_NARRATIVE:Ljava/lang/String; = "isForcedNarrative"

.field protected static final ATTR_ID:Ljava/lang/String; = "id"

.field protected static final ATTR_LANGUAGE:Ljava/lang/String; = "language"

.field protected static final ATTR_LANGUAGE_DESCRIPTION:Ljava/lang/String; = "languageDescription"

.field protected static final ATTR_NONE_TRACK:Ljava/lang/String; = "isNoneTrack"

.field public static final ATTR_ORDER:Ljava/lang/String; = "order"

.field protected static final ATTR_SELECTED:Ljava/lang/String; = "selected"

.field protected static final ATTR_TRACK_TYPE:Ljava/lang/String; = "trackType"

.field public static final IMPL:Ljava/lang/String; = "impl"


# instance fields
.field protected canDeviceRender:Z

.field protected id:Ljava/lang/String;

.field protected isForcedNarrative:Z

.field protected isNone:Z

.field protected languageCodeIso639_1:Ljava/lang/String;

.field protected languageCodeIso639_2:Ljava/lang/String;

.field protected languageDescription:Ljava/lang/String;

.field protected nccpOrderNumber:I

.field protected trackType:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public canDeviceRender()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->canDeviceRender:Z

    return v0
.end method

.method public compareTo(Lcom/netflix/mediaclient/media/Subtitle;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 149
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->languageDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 159
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :cond_2
    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->isForcedNarrative:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->isNone:Z

    if-nez v1, :cond_0

    .line 166
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->languageDescription:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 167
    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->languageDescription:Ljava/lang/String;

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/netflix/mediaclient/media/Subtitle;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/media/BaseSubtitle;->compareTo(Lcom/netflix/mediaclient/media/Subtitle;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 225
    goto :goto_0

    .line 227
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/media/Subtitle;

    if-nez v2, :cond_3

    move v0, v1

    .line 228
    goto :goto_0

    .line 230
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/media/Subtitle;

    .line 231
    iget v2, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->nccpOrderNumber:I

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCodeIso639_1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->languageCodeIso639_1:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCodeIso639_2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->languageCodeIso639_2:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->languageDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getNccpOrderNumber()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->nccpOrderNumber:I

    return v0
.end method

.method public getTrackType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->trackType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 207
    .line 209
    iget v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->nccpOrderNumber:I

    add-int/lit8 v0, v0, 0x1f

    .line 210
    return v0
.end method

.method public isCC()Z
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->trackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageCodeIso639_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->languageCodeIso639_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageCodeIso639_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->languageCodeIso639_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", languageDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->languageDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->trackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canDeviceRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->canDeviceRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nccpOrderNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/BaseSubtitle;->nccpOrderNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
