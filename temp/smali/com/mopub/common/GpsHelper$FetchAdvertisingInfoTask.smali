.class Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;
.super Landroid/os/AsyncTask;
.source "GpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/GpsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchAdvertisingInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsHelperListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/common/GpsHelper$GpsHelperListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gpsHelperListener"    # Lcom/mopub/common/GpsHelper$GpsHelperListener;

    .prologue
    .line 129
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 131
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->mGpsHelperListenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 132
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    .line 137
    :try_start_0
    iget-object v4, p0, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 138
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 155
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v6

    .line 142
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    const/4 v4, 0x0

    const-string v5, "getAdvertisingIdInfo"

    invoke-static {v4, v5}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    .line 143
    invoke-static {}, Lcom/mopub/common/GpsHelper;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    const-class v5, Landroid/content/Context;

    .line 144
    invoke-virtual {v4, v5, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v3

    .line 146
    .local v3, "methodBuilder":Lcom/mopub/common/util/Reflection$MethodBuilder;
    invoke-virtual {v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "adInfo":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 149
    invoke-static {v1, v0}, Lcom/mopub/common/GpsHelper;->updateClientMetadata(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v0    # "adInfo":Ljava/lang/Object;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "methodBuilder":Lcom/mopub/common/util/Reflection$MethodBuilder;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "exception":Ljava/lang/Exception;
    const-string v4, "Unable to obtain Google AdvertisingIdClient.Info via reflection."

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;->mGpsHelperListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/GpsHelper$GpsHelperListener;

    .line 161
    .local v0, "gpsHelperListener":Lcom/mopub/common/GpsHelper$GpsHelperListener;
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    .line 164
    :cond_0
    return-void
.end method
