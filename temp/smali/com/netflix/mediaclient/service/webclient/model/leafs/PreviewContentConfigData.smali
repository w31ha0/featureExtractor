.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
.super Ljava/lang/Object;
.source "PreviewContentConfigData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_previewcontent"


# instance fields
.field private encryptedDolbyDigitalPlus20Enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedDolbyDigitalPlus20Enabled"
    .end annotation
.end field

.field private encryptedDolbyDigitalPlus51Enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedDolbyDigitalPlus51Enabled"
    .end annotation
.end field

.field private encryptedHEAAC2Enabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedHEAAC2Enabled"
    .end annotation
.end field

.field private encryptedImageSubtitlesEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedImageSubtitlesEnabled"
    .end annotation
.end field

.field private encryptedTextSubtitlesEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "encryptedTextSubtitlesEnabled"
    .end annotation
.end field

.field private previewContentEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previewContentEnabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    .line 15
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    .line 18
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    .line 24
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    .line 27
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    return-void
.end method

.method public static getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;-><init>()V

    .line 101
    return-object v0
.end method

.method public static getDisabledConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;-><init>()V

    .line 107
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    .line 108
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    .line 109
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    .line 110
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    .line 111
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    .line 112
    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    .line 113
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 71
    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    .line 73
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    if-ne v2, v3, :cond_0

    .line 74
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    if-ne v2, v3, :cond_0

    .line 75
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    if-ne v2, v3, :cond_0

    .line 76
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    if-ne v2, v3, :cond_0

    .line 78
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    if-ne v2, v3, :cond_0

    .line 80
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    iget-boolean v3, p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 87
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 88
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 89
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 90
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    if-eqz v3, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 92
    return v0

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0

    :cond_1
    move v0, v2

    .line 87
    goto :goto_1

    :cond_2
    move v0, v2

    .line 88
    goto :goto_2

    :cond_3
    move v0, v2

    .line 89
    goto :goto_3

    :cond_4
    move v0, v2

    .line 90
    goto :goto_4

    :cond_5
    move v1, v2

    .line 91
    goto :goto_5
.end method

.method public isEncryptedDolbyDigitalPlus20Enabled()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    return v0
.end method

.method public isEncryptedDolbyDigitalPlus51Enabled()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    return v0
.end method

.method public isEncryptedHEAAC2Enabled()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    return v0
.end method

.method public isEncryptedImageSubtitlesEnabled()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    return v0
.end method

.method public isEncryptedTextSubtitlesEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    return v0
.end method

.method public isPreviewContentEnabled()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PreviewContentConfigData{previewContentEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->previewContentEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", encryptedTextSubtitlesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedTextSubtitlesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", encryptedImageSubtitlesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedImageSubtitlesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", encryptedDolbyDigitalPlus51Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus51Enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", encryptedDolbyDigitalPlus20Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedDolbyDigitalPlus20Enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", encryptedHEAAC2Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->encryptedHEAAC2Enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
