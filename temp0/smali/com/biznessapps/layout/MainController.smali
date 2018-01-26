.class public Lcom/biznessapps/layout/MainController;
.super Landroid/app/Activity;
.source "MainController.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# instance fields
.field private needMessagesTab:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/layout/MainController;->needMessagesTab:Z

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/layout/MainController;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->loadAppInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/layout/MainController;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->doImagesPredownload(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/model/Tab;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # Lcom/biznessapps/model/Tab;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->setMessageProperty(Lcom/biznessapps/model/Tab;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/layout/MainController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->correctImageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/layout/MainController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/biznessapps/layout/MainController;->needMessagesTab:Z

    return v0
.end method

.method static synthetic access$500(Lcom/biznessapps/layout/MainController;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->registerPushNotifications()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/layout/MainController;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/layout/MainController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->openMessageTab()V

    return-void
.end method

.method private clearOldState()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->clear()V

    .line 66
    invoke-static {}, Lcom/biznessapps/api/navigation/NavigationManager;->clear()V

    .line 67
    return-void
.end method

.method private correctImageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5f

    .line 279
    const/16 v2, 0x2d

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "newName":Ljava/lang/String;
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ".png"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "completeName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 280
    .end local v0    # "completeName":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private defineDeviceParams()V
    .locals 5

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 264
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 265
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 267
    .local v2, "height":I
    if-ge v3, v2, :cond_0

    move v0, v3

    .line 268
    .local v0, "deviceWidth":I
    :goto_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/biznessapps/api/AppCore;->setDeviceWidth(I)V

    .line 269
    return-void

    .end local v0    # "deviceWidth":I
    :cond_0
    move v0, v2

    .line 267
    goto :goto_0
.end method

.method private doIconsPredownloading(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/Tab;

    .line 195
    .local v2, "tab":Lcom/biznessapps/model/Tab;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/model/AppSettings;->getTabIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/biznessapps/utils/ImageManager;->downloadImageToCache(Ljava/lang/String;Z)V

    goto :goto_0

    .line 198
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "tab":Lcom/biznessapps/model/Tab;
    :cond_0
    return-void
.end method

.method private doImagesPredownload(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->doTabBgPredownloading()V

    .line 182
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/MainController;->doIconsPredownloading(Ljava/util/List;)V

    .line 183
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->downloadCustomButton()V

    .line 184
    return-void
.end method

.method private doTabBgPredownloading()V
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v0

    .line 188
    .local v0, "settings":Lcom/biznessapps/model/AppSettings;
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getTabSrc()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "url":Ljava/lang/String;
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/biznessapps/utils/ImageManager;->downloadImageToCache(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method private downloadCustomButton()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 202
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "appCode":Ljava/lang/String;
    const-string v8, "http://biznessapps.com/iphone/home.php?app_code=%s&version=4&tab_id=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    const-string v10, ""

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, "homeUrl":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&base64=1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "customButtonData":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/JsonParserUtils;->parseCommonData(Ljava/lang/String;)Lcom/biznessapps/model/CommonDataItem;

    move-result-object v4

    .line 209
    .local v4, "data":Lcom/biznessapps/model/CommonDataItem;
    invoke-virtual {v4}, Lcom/biznessapps/model/CommonDataItem;->getImage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v8

    invoke-virtual {v4}, Lcom/biznessapps/model/CommonDataItem;->getImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Lcom/biznessapps/utils/ImageManager;->downloadImageToCache(Ljava/lang/String;Z)V

    .line 212
    :cond_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v8

    invoke-virtual {v4}, Lcom/biznessapps/model/CommonDataItem;->getImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biznessapps/api/AppCore$UiSettings;->setHomeBgUrl(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v8

    invoke-virtual {v4}, Lcom/biznessapps/model/CommonDataItem;->getCustomButton()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biznessapps/utils/ImageManager;->defineDrawableStructure(Ljava/lang/String;)Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    move-result-object v1

    .line 216
    .local v1, "buttonData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    if-nez v1, :cond_2

    .line 217
    new-instance v1, Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    .end local v1    # "buttonData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    invoke-direct {v1}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>()V

    .line 220
    .restart local v1    # "buttonData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    const/4 v2, 0x0

    .line 221
    .local v2, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Lcom/biznessapps/model/CommonDataItem;->getCustomButton()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 223
    :try_start_0
    invoke-virtual {v4}, Lcom/biznessapps/model/CommonDataItem;->getCustomButton()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/biznessapps/android/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 224
    .local v5, "decodedImage":[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 230
    .end local v5    # "decodedImage":[B
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 231
    invoke-virtual {v1, v2}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->setCustomButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    .end local v2    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/biznessapps/utils/ImageManager;->setCustomButtonData(Lcom/biznessapps/utils/ImageManager$CustomButtonData;)V

    .line 246
    return-void

    .line 235
    .restart local v2    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/high16 v8, -0x1000000

    invoke-virtual {v1, v8}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->setTextColorId(I)V

    .line 236
    sget v8, Lcom/biznessapps/layout/R$drawable;->button_gray_src:I

    invoke-virtual {v1, v8}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->setDrawableResourceId(I)V

    .line 239
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v8

    const-string v9, "APP_INFO_PROPERTY"

    invoke-virtual {v8, v9}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/model/App;

    .line 240
    .local v6, "homeDataInfo":Lcom/biznessapps/model/App;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/biznessapps/model/App;->getCustomButtonUrl()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 241
    invoke-virtual {v6}, Lcom/biznessapps/model/App;->getCustomButtonUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->setCustomButtonUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 225
    .end local v6    # "homeDataInfo":Lcom/biznessapps/model/App;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method private getImageManager()Lcom/biznessapps/utils/ImageManager;
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method private initNewState()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/biznessapps/api/UIHandler;->get()Landroid/os/Handler;

    .line 71
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/storage/StorageKeeper;->init(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/MemoryUtils;->setContext(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->defineDeviceParams()V

    .line 74
    return-void
.end method

.method private loadApp()V
    .locals 7

    .prologue
    .line 77
    sget v4, Lcom/biznessapps/layout/R$string;->code_name:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/layout/MainController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "defaultApp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "APPCODE"

    invoke-static {v4, v5, v3}, Lcom/biznessapps/utils/ViewUtils;->getExtraKey(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "appCode":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    .line 81
    .local v1, "cacher":Lcom/biznessapps/api/CachingManager;
    invoke-virtual {v1, v0}, Lcom/biznessapps/api/CachingManager;->setAppCode(Ljava/lang/String;)V

    .line 82
    new-instance v2, Lcom/biznessapps/layout/MainController$1;

    invoke-direct {v2, p0, v1}, Lcom/biznessapps/layout/MainController$1;-><init>(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/api/CachingManager;)V

    .line 164
    .local v2, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const-string v4, "http://www.biznessapps.com/iphone/tabs.php?app_code=%s&version=4"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .end local v0    # "appCode":Ljava/lang/String;
    :goto_0
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/biznessapps/api/AppHttpUtils;->executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 165
    return-void

    .restart local v0    # "appCode":Ljava/lang/String;
    :cond_0
    move-object v0, v3

    .line 164
    goto :goto_0
.end method

.method private loadAppInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "appCode":Ljava/lang/String;
    const-string v4, "http://www.biznessapps.com/iphone/settings.php?app_code=%s&version=4"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "settingsData":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-static {v3}, Lcom/biznessapps/utils/JsonParserUtils;->parseAppSettings(Ljava/lang/String;)Lcom/biznessapps/model/AppSettings;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/AppCore;->setAppSettings(Lcom/biznessapps/model/AppSettings;)V

    .line 175
    const-string v4, "http://biznessapps.com/iphone/home.php?app_code=%s&version=4&tab_id=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const-string v6, ""

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "homeUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "appData":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    const-string v5, "APP_INFO_PROPERTY"

    invoke-static {v1}, Lcom/biznessapps/utils/JsonParserUtils;->parseApp(Ljava/lang/String;)Lcom/biznessapps/model/App;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 178
    return-void
.end method

.method private openMessageTab()V
    .locals 5

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "messagesviewcontroller"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v2, "ba.application.settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/MainController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 298
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "TAB_LABEL"

    const-string v3, "MESSAGE_TAB_LABEL_PROPERTY"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, v0}, Lcom/biznessapps/layout/MainController;->startActivity(Landroid/content/Intent;)V

    .line 300
    return-void
.end method

.method private registerPushNotifications()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    const-string v1, "sender"

    const-string v2, "bizappspush@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Lcom/biznessapps/layout/MainController;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 254
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "!!!!!!!!!!!!!!!!!!!999 registerPushNotifications = "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method private setMessageProperty(Lcom/biznessapps/model/Tab;)V
    .locals 4
    .param p1, "tab"    # Lcom/biznessapps/model/Tab;

    .prologue
    .line 303
    const-string v2, "ba.application.settings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/MainController;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 304
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "MESSAGE_TAB_LABEL_PROPERTY"

    invoke-virtual {p1}, Lcom/biznessapps/model/Tab;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/biznessapps/layout/MainController;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "OPEN_MESSAGE_TAB_PROPERTY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/biznessapps/layout/MainController;->needMessagesTab:Z

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/layout/MainController;->requestWindowFeature(I)Z

    .line 58
    sget v0, Lcom/biznessapps/layout/R$layout;->main:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/layout/MainController;->setContentView(I)V

    .line 59
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->clearOldState()V

    .line 60
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->initNewState()V

    .line 61
    invoke-direct {p0}, Lcom/biznessapps/layout/MainController;->loadApp()V

    .line 62
    return-void
.end method
