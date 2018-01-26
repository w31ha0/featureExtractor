.class public Lcom/biznessapps/api/AppCore;
.super Ljava/lang/Object;
.source "AppCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/api/AppCore$UiSettings;
    }
.end annotation


# static fields
.field private static instance:Lcom/biznessapps/api/AppCore;


# instance fields
.field private appSettings:Lcom/biznessapps/model/AppSettings;

.field private cachingManager:Lcom/biznessapps/api/CachingManager;

.field private deviceWidth:I

.field private imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

.field private imageManager:Lcom/biznessapps/utils/ImageManager;

.field private uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/biznessapps/api/AppCore$UiSettings;

    invoke-direct {v0}, Lcom/biznessapps/api/AppCore$UiSettings;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    .line 24
    new-instance v0, Lcom/biznessapps/api/CachingManager;

    invoke-direct {v0}, Lcom/biznessapps/api/CachingManager;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->cachingManager:Lcom/biznessapps/api/CachingManager;

    .line 26
    new-instance v0, Lcom/biznessapps/utils/ImageManager;

    invoke-direct {v0}, Lcom/biznessapps/utils/ImageManager;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->imageManager:Lcom/biznessapps/utils/ImageManager;

    .line 28
    new-instance v0, Lcom/biznessapps/utils/ImageDownloader;

    invoke-direct {v0}, Lcom/biznessapps/utils/ImageDownloader;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    .line 136
    return-void
.end method

.method public static getInstance()Lcom/biznessapps/api/AppCore;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/biznessapps/api/AppCore;->instance:Lcom/biznessapps/api/AppCore;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/biznessapps/api/AppCore;

    invoke-direct {v0}, Lcom/biznessapps/api/AppCore;-><init>()V

    sput-object v0, Lcom/biznessapps/api/AppCore;->instance:Lcom/biznessapps/api/AppCore;

    .line 36
    :cond_0
    sget-object v0, Lcom/biznessapps/api/AppCore;->instance:Lcom/biznessapps/api/AppCore;

    return-object v0
.end method

.method private initItemColors()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    if-eqz v1, :cond_8

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getEvenRowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getEvenRowColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setEvenRowColor(I)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getOddRowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getOddRowColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setOddRowColor(I)V

    .line 100
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setHasColor(Z)V

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getEvenRowTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getEvenRowTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setEvenRowTextColor(I)V

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getOddRowTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getOddRowTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setOddRowTextColor(I)V

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getNavigBarColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getNavigBarColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setNavigationBarColor(I)V

    .line 111
    :cond_4
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getNavigBarTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getNavigBarTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setNavigationTextColor(I)V

    .line 114
    :cond_5
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getNavigBarTextShadowColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getNavigBarTextShadowColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setNavigationTextShadowColor(I)V

    .line 117
    :cond_6
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getSectionBarColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 118
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getSectionBarColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setSectionBarColor(I)V

    .line 120
    :cond_7
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->getSectionBarTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    iget-object v1, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    iget-object v2, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/model/AppSettings;->getSectionBarTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setSectionTextColor(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :cond_8
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->imageManager:Lcom/biznessapps/utils/ImageManager;

    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageManager;->clear()V

    .line 79
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->cachingManager:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v0}, Lcom/biznessapps/api/CachingManager;->clearCache()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    .line 81
    return-void
.end method

.method public getAppSettings()Lcom/biznessapps/model/AppSettings;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/biznessapps/model/AppSettings;

    invoke-direct {v0}, Lcom/biznessapps/model/AppSettings;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    return-object v0
.end method

.method public getCachingManager()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->cachingManager:Lcom/biznessapps/api/CachingManager;

    return-object v0
.end method

.method public getDeviceWidth()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/biznessapps/api/AppCore;->deviceWidth:I

    return v0
.end method

.method public getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    return-object v0
.end method

.method public getImageManager()Lcom/biznessapps/utils/ImageManager;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->imageManager:Lcom/biznessapps/utils/ImageManager;

    return-object v0
.end method

.method public getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->uiSettings:Lcom/biznessapps/api/AppCore$UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore$UiSettings;->reset()V

    .line 74
    invoke-direct {p0}, Lcom/biznessapps/api/AppCore;->initItemColors()V

    .line 75
    return-void
.end method

.method public setAppSettings(Lcom/biznessapps/model/AppSettings;)V
    .locals 2
    .param p1, "appSettings"    # Lcom/biznessapps/model/AppSettings;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    .line 68
    iget-object v0, p0, Lcom/biznessapps/api/AppCore;->appSettings:Lcom/biznessapps/model/AppSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/model/AppSettings;->setActive(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public setDeviceWidth(I)V
    .locals 0
    .param p1, "deviceWidth"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/biznessapps/api/AppCore;->deviceWidth:I

    .line 45
    return-void
.end method
