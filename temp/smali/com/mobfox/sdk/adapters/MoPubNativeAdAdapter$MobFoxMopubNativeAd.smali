.class public Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;
.super Lcom/mopub/nativeads/StaticNativeAd;
.source "MoPubNativeAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobFoxMopubNativeAd"
.end annotation


# instance fields
.field aNative:Lcom/mobfox/sdk/nativeads/Native;

.field context:Landroid/content/Context;

.field event:Lcom/mobfox/sdk/customevents/CustomEventNative;

.field imagesLoadedListener:Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;

.field isImpressionTracked:Z

.field mNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

.field registeredViewForInteraction:Z

.field final synthetic this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;


# direct methods
.method public constructor <init>(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;Lcom/mobfox/sdk/nativeads/Native;Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;Landroid/content/Context;)V
    .locals 7
    .param p1, "this$0"    # Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;
    .param p2, "aNative"    # Lcom/mobfox/sdk/nativeads/Native;
    .param p3, "event"    # Lcom/mobfox/sdk/customevents/CustomEventNative;
    .param p4, "mNativeAd"    # Lcom/mobfox/sdk/nativeads/NativeAd;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 205
    iput-object p1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    invoke-direct {p0}, Lcom/mopub/nativeads/StaticNativeAd;-><init>()V

    .line 206
    iput-object p2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->aNative:Lcom/mobfox/sdk/nativeads/Native;

    .line 207
    iput-object p3, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->event:Lcom/mobfox/sdk/customevents/CustomEventNative;

    .line 208
    iput-object p4, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->mNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    .line 209
    iput-object p5, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->context:Landroid/content/Context;

    .line 211
    iput-boolean v3, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->isImpressionTracked:Z

    .line 212
    iput-boolean v3, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->registeredViewForInteraction:Z

    .line 214
    invoke-virtual {p4}, Lcom/mobfox/sdk/nativeads/NativeAd;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->setClickDestinationUrl(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->init()V

    .line 218
    invoke-virtual {p4}, Lcom/mobfox/sdk/nativeads/NativeAd;->getTexts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobfox/sdk/nativeads/TextItem;

    .line 220
    .local v2, "ti":Lcom/mobfox/sdk/nativeads/TextItem;
    :try_start_0
    invoke-virtual {v2}, Lcom/mobfox/sdk/nativeads/TextItem;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    invoke-virtual {v2}, Lcom/mobfox/sdk/nativeads/TextItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->setTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MobFoxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MobFox MoPub Adapter >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/mobfox/sdk/nativeads/TextItem;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "desc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    invoke-virtual {v2}, Lcom/mobfox/sdk/nativeads/TextItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {v2}, Lcom/mobfox/sdk/nativeads/TextItem;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ctatext"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    invoke-virtual {v2}, Lcom/mobfox/sdk/nativeads/TextItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->setCallToAction(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {v2}, Lcom/mobfox/sdk/nativeads/TextItem;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rating"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    invoke-virtual {v2}, Lcom/mobfox/sdk/nativeads/TextItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->setStarRating(Ljava/lang/Double;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 242
    .end local v2    # "ti":Lcom/mobfox/sdk/nativeads/TextItem;
    :cond_4
    invoke-virtual {p4}, Lcom/mobfox/sdk/nativeads/NativeAd;->getImages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobfox/sdk/nativeads/ImageItem;

    .line 244
    .local v1, "ii":Lcom/mobfox/sdk/nativeads/ImageItem;
    :try_start_2
    invoke-virtual {v1}, Lcom/mobfox/sdk/nativeads/ImageItem;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "icon"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 245
    invoke-virtual {v1}, Lcom/mobfox/sdk/nativeads/ImageItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->setIconImageUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 252
    :catch_1
    move-exception v0

    .line 253
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "MobFoxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MobFox MoPub Adapter >> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    invoke-virtual {v1}, Lcom/mobfox/sdk/nativeads/ImageItem;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "main"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 249
    invoke-virtual {v1}, Lcom/mobfox/sdk/nativeads/ImageItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->setMainImageUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 258
    .end local v1    # "ii":Lcom/mobfox/sdk/nativeads/ImageItem;
    :cond_7
    iget-object v3, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->imagesLoadedListener:Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;

    invoke-virtual {p0, p5, v3}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->loadImages(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;)V

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->notifyAdImpressed()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 188
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;-><init>(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;)V

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->imagesLoadedListener:Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;

    .line 203
    return-void
.end method

.method public loadImages(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imagesLoadedListener"    # Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->mNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-virtual {v0, p1, p2}, Lcom/mobfox/sdk/nativeads/NativeAd;->loadImages(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;)V

    .line 263
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->registeredViewForInteraction:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->event:Lcom/mobfox/sdk/customevents/CustomEventNative;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/customevents/CustomEventNative;->registerViewForInteraction(Landroid/view/View;)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->registeredViewForInteraction:Z

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->isImpressionTracked:Z

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->mNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->context:Landroid/content/Context;

    new-instance v2, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$1;

    invoke-direct {v2, p0}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$1;-><init>(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/sdk/nativeads/NativeAd;->fireTrackers(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;)V

    .line 183
    :cond_1
    return-void
.end method
