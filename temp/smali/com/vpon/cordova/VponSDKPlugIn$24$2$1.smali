.class Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn$24$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpon/cordova/VponSDKPlugIn$24$2;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn$24$2;)V
    .locals 0

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2239
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24$2;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$24$2;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$24;->a:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 2240
    const-string v1, "u"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2242
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24$2;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$24$2;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$24;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    invoke-static {v1, v0}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;)Z

    move-result v0

    .line 2243
    if-nez v0, :cond_0

    .line 2244
    const-string v0, "VponSDKPlugIn"

    const-string v1, "storePicture return false"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24$2;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$24$2;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$24;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24$2;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$24$2;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$24;->b:Lvpadn/p;

    const-string v2, "storePicture return false"

    invoke-static {v0, v1, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;)V

    .line 2260
    :goto_0
    return-void

    .line 2248
    :cond_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24$2;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$24$2;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$24;->b:Lvpadn/p;

    invoke-virtual {v0}, Lvpadn/p;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2250
    :catch_0
    move-exception v0

    .line 2251
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2252
    const-string v1, "VponSDKPlugIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throw exception at doStorePicture postion 2 exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    :try_start_1
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24$2;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$24$2;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$24;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$2$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24$2;

    iget-object v2, v2, Lcom/vpon/cordova/VponSDKPlugIn$24$2;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v2, v2, Lcom/vpon/cordova/VponSDKPlugIn$24;->b:Lvpadn/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "throw exception at doStorePicture postion 2 exception:"

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

    .line 2255
    :catch_1
    move-exception v0

    .line 2256
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
