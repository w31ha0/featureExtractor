.class Lcom/mobfox/sdk/services/MobFoxAdIdService$1;
.super Landroid/os/AsyncTask;
.source "MobFoxAdIdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/services/MobFoxAdIdService;-><init>(Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/services/MobFoxAdIdService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/services/MobFoxAdIdService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/services/MobFoxAdIdService;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxAdIdService;

    iput-object p2, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/services/MobFoxAdIdService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 36
    :try_start_0
    const-string v6, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 38
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    .line 39
    .local v5, "paramContext":[Ljava/lang/Class;
    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    .line 40
    const-string v6, "getAdvertisingIdInfo"

    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 41
    .local v3, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService$1;->val$context:Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 43
    .local v4, "idinfo":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "advertId":Ljava/lang/String;
    const-string/jumbo v6, "{"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    const/4 v6, 0x0

    const-string/jumbo v7, "}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 61
    .end local v0    # "advertId":Ljava/lang/String;
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    .end local v4    # "idinfo":Ljava/lang/Object;
    .end local v5    # "paramContext":[Ljava/lang/Class;
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "MobFoxBanner"

    const-string v7, "google play error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v0, ""

    goto :goto_0

    .line 55
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 57
    const-string v6, "MobFoxBanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google play throwable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, ""

    goto :goto_0

    .line 60
    :cond_0
    const-string v6, "MobFoxBanner"

    const-string v7, "google play throwable"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, ""

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/services/MobFoxAdIdService$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "advertId"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxAdIdService;

    invoke-virtual {v0, p1}, Lcom/mobfox/sdk/services/MobFoxAdIdService;->setAd_id(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService$1;->this$0:Lcom/mobfox/sdk/services/MobFoxAdIdService;

    invoke-virtual {v0}, Lcom/mobfox/sdk/services/MobFoxAdIdService;->run()V

    .line 69
    return-void
.end method
