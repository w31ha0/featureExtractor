.class Lcom/vpon/cordova/VponSDKPlugIn$10;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->a(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONArray;

.field final synthetic c:Lvpadn/p;

.field final synthetic d:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V
    .locals 0

    .prologue
    .line 4149
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$10;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$10;->b:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/vpon/cordova/VponSDKPlugIn$10;->c:Lvpadn/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4151
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$10;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 4152
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$10;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$10;->b:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$10;->c:Lvpadn/p;

    invoke-interface {v0, v1, v2, v3}, Lvpadn/ag;->controlNativeVideoPlayer(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)V

    .line 4153
    return-void
.end method
