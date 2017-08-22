.class Lcom/vpon/cordova/VponSDKPlugIn$24;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->m(Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lvpadn/p;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Lorg/json/JSONArray;Lvpadn/p;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2181
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->a:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->b:Lvpadn/p;

    iput-object p4, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2185
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->a:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 2188
    const-string v1, "u"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2189
    const-string v1, "u"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2196
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2197
    const-string v0, "VponSDKPlugIn"

    const-string v1, "!URLUtil.isNetworkUrl(url)"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->b:Lvpadn/p;

    const-string v2, "jsonObj.has(JSONParamConstant.URL) is false"

    invoke-static {v0, v1, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;)V

    .line 2275
    :goto_0
    return-void

    .line 2191
    :cond_0
    const-string v0, "VponSDKPlugIn"

    const-string v1, "jsonObj.has(JSONParamConstant.URL) is false"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->b:Lvpadn/p;

    const-string v2, "jsonObj.has(JSONParamConstant.URL) is false"

    invoke-static {v0, v1, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2201
    :catch_0
    move-exception v0

    .line 2202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2203
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at doStorePicture Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2205
    :try_start_1
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->b:Lvpadn/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throw exception at doStorePicture exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2206
    :catch_1
    move-exception v0

    .line 2207
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 2213
    :cond_1
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2214
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 2215
    const-string v3, "Store Picture"

    .line 2216
    const-string v2, "Are You sure to add picture to photo album?"

    .line 2217
    const-string v1, "Yes"

    .line 2218
    const-string v0, "No"

    .line 2219
    iget-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2220
    :cond_2
    const-string/jumbo v3, "\u5132\u5b58\u5716\u7247"

    .line 2221
    const-string/jumbo v2, "\u78ba\u5b9a\u5c07\u5132\u5b58\u5716\u7247\u5230\u624b\u6a5f\u7684\u76f8\u7c3f\uff1f"

    .line 2222
    const-string/jumbo v1, "\u540c\u610f"

    .line 2223
    const-string/jumbo v0, "\u4e0d\u540c\u610f"

    .line 2231
    :cond_3
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/vpon/cordova/VponSDKPlugIn$24;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2232
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2233
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/vpon/cordova/VponSDKPlugIn$24$2;

    invoke-direct {v3, p0}, Lcom/vpon/cordova/VponSDKPlugIn$24$2;-><init>(Lcom/vpon/cordova/VponSDKPlugIn$24;)V

    .line 2234
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/vpon/cordova/VponSDKPlugIn$24$1;

    invoke-direct {v2, p0}, Lcom/vpon/cordova/VponSDKPlugIn$24$1;-><init>(Lcom/vpon/cordova/VponSDKPlugIn$24;)V

    .line 2264
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2224
    :cond_4
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2225
    const-string/jumbo v3, "\u50a8\u5b58\u56fe\u7247"

    .line 2226
    const-string/jumbo v2, "\u786e\u5b9a\u5c06\u50a8\u5b58\u56fe\u7247\u5230\u624b\u673a\u7684\u76f8\u7c3f\uff1f"

    .line 2227
    const-string/jumbo v1, "\u540c\u610f"

    .line 2228
    const-string/jumbo v0, "\u4e0d\u540c\u610f"

    goto :goto_1
.end method
