.class public Lcom/mobfox/sdk/nativeads/NativeAd;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;,
        Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;
    }
.end annotation


# instance fields
.field imagedFailed:I

.field images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field imagesLoaded:I

.field link:Ljava/lang/String;

.field listener:Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;

.field self:Lcom/mobfox/sdk/nativeads/NativeAd;

.field texts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/TextItem;",
            ">;"
        }
    .end annotation
.end field

.field trackerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p0, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->self:Lcom/mobfox/sdk/nativeads/NativeAd;

    .line 39
    iput v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->imagesLoaded:I

    .line 40
    iput v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->imagedFailed:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/mobfox/sdk/nativeads/NativeAd;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobfox/sdk/nativeads/NativeAd;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mobfox/sdk/nativeads/NativeAd;->checkImagesDone()V

    return-void
.end method

.method private checkImagesDone()V
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->imagesLoaded:I

    iget v1, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->imagedFailed:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->listener:Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;

    invoke-interface {v0, p0}, Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;->onImagesLoaded(Lcom/mobfox/sdk/nativeads/NativeAd;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/mobfox/sdk/nativeads/NativeAd;
    .locals 22
    .param p0, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 125
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 197
    :goto_0
    return-object v5

    .line 128
    :cond_0
    :try_start_0
    new-instance v5, Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-direct {v5}, Lcom/mobfox/sdk/nativeads/NativeAd;-><init>()V

    .line 129
    .local v5, "ad":Lcom/mobfox/sdk/nativeads/NativeAd;
    const-string v17, "native"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 132
    .local v4, "aNative":Lorg/json/JSONObject;
    :try_start_1
    const-string v17, "link"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "url"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/mobfox/sdk/nativeads/NativeAd;->setLink(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_1
    :try_start_2
    const-string v17, "assets"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 139
    .local v7, "assets":Lorg/json/JSONArray;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v16, "trackerList":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v11, "images":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/ImageItem;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v14, "texts":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/TextItem;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 145
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 147
    .local v6, "asset":Lorg/json/JSONObject;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 143
    :cond_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 133
    .end local v6    # "asset":Lorg/json/JSONObject;
    .end local v7    # "assets":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v11    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/ImageItem;>;"
    .end local v14    # "texts":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/TextItem;>;"
    .end local v16    # "trackerList":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    :catch_0
    move-exception v8

    .line 134
    .local v8, "e":Lorg/json/JSONException;
    const-string v17, "MobFoxNative"

    const-string v18, "no link"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 190
    .end local v4    # "aNative":Lorg/json/JSONObject;
    .end local v5    # "ad":Lcom/mobfox/sdk/nativeads/NativeAd;
    .end local v8    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v8

    .line 192
    .restart local v8    # "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_9

    .line 193
    const-string v17, "MobFoxNative"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "native ad parse err "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 149
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v4    # "aNative":Lorg/json/JSONObject;
    .restart local v5    # "ad":Lcom/mobfox/sdk/nativeads/NativeAd;
    .restart local v6    # "asset":Lorg/json/JSONObject;
    .restart local v7    # "assets":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    .restart local v11    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/ImageItem;>;"
    .restart local v14    # "texts":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/TextItem;>;"
    .restart local v16    # "trackerList":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    :cond_2
    :try_start_3
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "icon"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "main"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v17

    if-eqz v17, :cond_4

    .line 151
    :cond_3
    :try_start_4
    new-instance v10, Lcom/mobfox/sdk/nativeads/ImageItem;

    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "img"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "url"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "img"

    .line 152
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "h"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v20, "img"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    const-string v21, "w"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/mobfox/sdk/nativeads/ImageItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 153
    .local v10, "image":Lcom/mobfox/sdk/nativeads/ImageItem;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 159
    .end local v10    # "image":Lcom/mobfox/sdk/nativeads/ImageItem;
    :cond_4
    :goto_5
    :try_start_5
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "title"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "desc"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "type"

    .line 160
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "ctatext"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "sponsored"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v17

    if-eqz v17, :cond_1

    .line 162
    :cond_5
    :try_start_6
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "title"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 163
    new-instance v13, Lcom/mobfox/sdk/nativeads/TextItem;

    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "text"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lcom/mobfox/sdk/nativeads/TextItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v13, "text":Lcom/mobfox/sdk/nativeads/TextItem;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 169
    .end local v13    # "text":Lcom/mobfox/sdk/nativeads/TextItem;
    :catch_2
    move-exception v17

    goto/16 :goto_3

    .line 167
    :cond_6
    new-instance v13, Lcom/mobfox/sdk/nativeads/TextItem;

    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "value"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lcom/mobfox/sdk/nativeads/TextItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .restart local v13    # "text":Lcom/mobfox/sdk/nativeads/TextItem;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 175
    .end local v6    # "asset":Lorg/json/JSONObject;
    .end local v13    # "text":Lcom/mobfox/sdk/nativeads/TextItem;
    :cond_7
    :try_start_7
    invoke-virtual {v5, v11}, Lcom/mobfox/sdk/nativeads/NativeAd;->setImages(Ljava/util/List;)V

    .line 176
    invoke-virtual {v5, v14}, Lcom/mobfox/sdk/nativeads/NativeAd;->setTexts(Ljava/util/List;)V

    .line 178
    const-string v17, "imptrackers"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 179
    .local v12, "imptrackers":Lorg/json/JSONArray;
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_8

    .line 181
    :try_start_8
    new-instance v15, Lcom/mobfox/sdk/nativeads/Tracker;

    const-string v17, "type"

    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/mobfox/sdk/nativeads/Tracker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .local v15, "tracker":Lcom/mobfox/sdk/nativeads/Tracker;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    .line 179
    .end local v15    # "tracker":Lcom/mobfox/sdk/nativeads/Tracker;
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 187
    :cond_8
    :try_start_9
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/mobfox/sdk/nativeads/NativeAd;->setTrackerList(Ljava/util/List;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 195
    .end local v4    # "aNative":Lorg/json/JSONObject;
    .end local v5    # "ad":Lcom/mobfox/sdk/nativeads/NativeAd;
    .end local v7    # "assets":Lorg/json/JSONArray;
    .end local v9    # "i":I
    .end local v11    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/ImageItem;>;"
    .end local v12    # "imptrackers":Lorg/json/JSONArray;
    .end local v14    # "texts":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/TextItem;>;"
    .end local v16    # "trackerList":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    .restart local v8    # "e":Lorg/json/JSONException;
    :cond_9
    const-string v17, "MobFoxNative"

    const-string v18, "native ad parse err"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 183
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v4    # "aNative":Lorg/json/JSONObject;
    .restart local v5    # "ad":Lcom/mobfox/sdk/nativeads/NativeAd;
    .restart local v7    # "assets":Lorg/json/JSONArray;
    .restart local v9    # "i":I
    .restart local v11    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/ImageItem;>;"
    .restart local v12    # "imptrackers":Lorg/json/JSONArray;
    .restart local v14    # "texts":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/TextItem;>;"
    .restart local v16    # "trackerList":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    :catch_3
    move-exception v17

    goto :goto_7

    .line 154
    .end local v12    # "imptrackers":Lorg/json/JSONArray;
    .restart local v6    # "asset":Lorg/json/JSONObject;
    :catch_4
    move-exception v17

    goto/16 :goto_5
.end method


# virtual methods
.method public fireTrackers(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobfox/sdk/nativeads/NativeAd;->fireTrackers(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;)V

    .line 121
    return-void
.end method

.method public fireTrackers(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;

    .prologue
    .line 94
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->trackerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 95
    .local v2, "trackersLeft":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->trackerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobfox/sdk/nativeads/Tracker;

    .line 96
    .local v1, "t":Lcom/mobfox/sdk/nativeads/Tracker;
    new-instance v0, Lcom/mobfox/sdk/networking/MobFoxRequest;

    invoke-virtual {v1}, Lcom/mobfox/sdk/nativeads/Tracker;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    .local v0, "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    new-instance v4, Lcom/mobfox/sdk/nativeads/NativeAd$2;

    invoke-direct {v4, p0, v1, v2, p2}, Lcom/mobfox/sdk/nativeads/NativeAd$2;-><init>(Lcom/mobfox/sdk/nativeads/NativeAd;Lcom/mobfox/sdk/nativeads/Tracker;Ljava/util/concurrent/CountDownLatch;Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;)V

    invoke-virtual {v0, v4}, Lcom/mobfox/sdk/networking/MobFoxRequest;->get(Lcom/mobfox/sdk/networking/AsyncCallback;)V

    goto :goto_0

    .line 117
    .end local v0    # "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    .end local v1    # "t":Lcom/mobfox/sdk/nativeads/Tracker;
    :cond_0
    return-void
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/ImageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->images:Ljava/util/List;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getTexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/TextItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->texts:Ljava/util/List;

    return-object v0
.end method

.method public getTrackerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/Tracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->trackerList:Ljava/util/List;

    return-object v0
.end method

.method public loadImages(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;

    .prologue
    .line 66
    iput-object p2, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->listener:Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;

    .line 68
    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 91
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->images:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->images:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobfox/sdk/nativeads/ImageItem;

    .line 74
    .local v1, "imageItem":Lcom/mobfox/sdk/nativeads/ImageItem;
    new-instance v2, Lcom/mobfox/sdk/networking/MobFoxRequest;

    invoke-virtual {v1}, Lcom/mobfox/sdk/nativeads/ImageItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    .local v2, "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    new-instance v3, Lcom/mobfox/sdk/nativeads/NativeAd$1;

    invoke-direct {v3, p0, v1}, Lcom/mobfox/sdk/nativeads/NativeAd$1;-><init>(Lcom/mobfox/sdk/nativeads/NativeAd;Lcom/mobfox/sdk/nativeads/ImageItem;)V

    invoke-virtual {v2, v3}, Lcom/mobfox/sdk/networking/MobFoxRequest;->getBitmap(Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/ImageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/ImageItem;>;"
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->images:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->link:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTexts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/TextItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "texts":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/TextItem;>;"
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->texts:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setTrackerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/Tracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "trackerList":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeAd;->trackerList:Ljava/util/List;

    .line 208
    return-void
.end method
