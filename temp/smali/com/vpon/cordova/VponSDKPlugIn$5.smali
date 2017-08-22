.class Lcom/vpon/cordova/VponSDKPlugIn$5;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->r(Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lvpadn/p;

.field final synthetic c:Lvpadn/ag;

.field final synthetic d:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)V
    .locals 0

    .prologue
    .line 3173
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$5;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$5;->b:Lvpadn/p;

    iput-object p4, p0, Lcom/vpon/cordova/VponSDKPlugIn$5;->c:Lvpadn/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3175
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvpadn/ba;->b(Ljava/lang/String;)V

    .line 3177
    :try_start_0
    new-instance v0, Lcom/vpon/cordova/VponSDKPlugIn$5$1;

    invoke-direct {v0, p0}, Lcom/vpon/cordova/VponSDKPlugIn$5$1;-><init>(Lcom/vpon/cordova/VponSDKPlugIn$5;)V

    .line 3240
    invoke-static {v0}, Lvpadn/be;->a(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3244
    :goto_0
    return-void

    .line 3241
    :catch_0
    move-exception v0

    .line 3242
    const-string v1, "VponSDKPlugIn"

    const-string v2, "doClick throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
