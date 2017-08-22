.class Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;
.super Lcom/mopub/nativeads/StaticNativeAd;
.source "MoPubCustomEventNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MoPubStaticNativeAd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;
    }
.end annotation


# static fields
.field static final PRIVACY_INFORMATION_CLICKTHROUGH_URL:Ljava/lang/String; = "https://www.mopub.com/optout"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mJsonObject:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/NativeClickHandler;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jsonBody"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "impressionTracker"    # Lcom/mopub/nativeads/ImpressionTracker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "nativeClickHandler"    # Lcom/mopub/nativeads/NativeClickHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "customEventNativeListener"    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/mopub/nativeads/StaticNativeAd;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mContext:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    .line 119
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    .line 120
    iput-object p5, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mCustomEventNativeListener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object v0
.end method

.method private addInstanceVariable(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 171
    :try_start_0
    sget-object v1, Lcom/mopub/nativeads/MoPubCustomEventNative$1;->$SwitchMap$com$mopub$nativeads$MoPubCustomEventNative$MoPubStaticNativeAd$Parameter:[I

    invoke-virtual {p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add JSON key to internal mapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 210
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 173
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setMainImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/ClassCastException;
    iget-boolean v1, p1, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->required:Z

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring class cast exception for optional key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addImpressionTrackers(Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setClickDestinationUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->parseClickTrackers(Ljava/lang/Object;)V

    goto :goto_0

    .line 188
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setCallToAction(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    invoke-static {p2}, Lcom/mopub/common/util/Numbers;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setStarRating(Ljava/lang/Double;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 207
    .end local p2    # "value":Ljava/lang/Object;
    .restart local v0    # "e":Ljava/lang/ClassCastException;
    :cond_0
    throw v0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private containsRequiredKeys(Lorg/json/JSONObject;)Z
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 159
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    .local v0, "jsonKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_0
    sget-object v2, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->requiredKeys:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method private isImageKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 221
    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseClickTrackers(Ljava/lang/Object;)V
    .locals 1
    .param p1, "clickTrackers"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addClickTrackers(Ljava/lang/Object;)V

    .line 218
    .end local p1    # "clickTrackers":Ljava/lang/Object;
    :goto_0
    return-void

    .line 216
    .restart local p1    # "clickTrackers":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "clickTrackers":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addClickTracker(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 260
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeClickHandler;->clearOnClickListener(Landroid/view/View;)V

    .line 261
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/ImpressionTracker;->destroy()V

    .line 266
    return-void
.end method

.method getAllImageUrls()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "imageUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getExtrasImageUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    return-object v0
.end method

.method getExtrasImageUrls()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 227
    .local v1, "extrasBitmapUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->isImageKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v1
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->notifyAdClicked()V

    .line 277
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mopub/nativeads/NativeClickHandler;->openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;)V

    .line 278
    return-void
.end method

.method loadAd()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->containsRequiredKeys(Lorg/json/JSONObject;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "JSONObject did not contain required keys."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 129
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;->from(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;

    move-result-object v3

    .line 133
    .local v3, "parameter":Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;
    if-eqz v3, :cond_1

    .line 135
    :try_start_0
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addInstanceVariable(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONObject key ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") contained unexpected value."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "parameter":Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter;
    :cond_2
    const-string v4, "https://www.mopub.com/optout"

    invoke-virtual {p0, v4}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->getAllImageUrls()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;

    invoke-direct {v6, p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$1;-><init>(Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;)V

    invoke-static {v4, v5, v6}, Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    .line 156
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mImpressionTracker:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/ImpressionTracker;->addView(Landroid/view/View;Lcom/mopub/nativeads/ImpressionInterface;)V

    .line 254
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->mNativeClickHandler:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/NativeClickHandler;->setOnClickListener(Landroid/view/View;Lcom/mopub/nativeads/ClickInterface;)V

    .line 255
    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd;->notifyAdImpressed()V

    .line 272
    return-void
.end method
