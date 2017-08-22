.class Lcom/vpon/cordova/VponSDKPlugIn$4;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->q(Lorg/json/JSONArray;Lvpadn/p;)V
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
    .line 3117
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$4;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$4;->b:Lvpadn/p;

    iput-object p4, p0, Lcom/vpon/cordova/VponSDKPlugIn$4;->c:Lvpadn/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3120
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$4;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$4;->b:Lvpadn/p;

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$4;->c:Lvpadn/ag;

    invoke-static {v0, v1, v2, v3}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lvpadn/p;Lvpadn/ag;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 3122
    invoke-static {v0}, Lvpadn/be;->a(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3126
    :goto_0
    return-void

    .line 3123
    :catch_0
    move-exception v0

    .line 3124
    const-string v1, "VponSDKPlugIn"

    const-string v2, "doAdReq throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
