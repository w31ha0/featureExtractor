.class Lcom/vpon/cordova/VponSDKPlugIn$8;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->A(Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lvpadn/p;

.field final synthetic c:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 0

    .prologue
    .line 3835
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$8;->c:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$8;->a:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$8;->b:Lvpadn/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$8;->c:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 3838
    const-string v1, "use_custom_close"

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$8;->a:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$8;->b:Lvpadn/p;

    invoke-interface {v0, v1, v2, v3}, Lvpadn/ag;->controlNativeVideoPlayer(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V

    .line 3840
    return-void
.end method
