.class Lcom/vpon/cordova/VponSDKPlugIn$21;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->g(Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$21;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$21;->a:Lvpadn/p;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$21;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vpon/cordova/VponSDKPlugIn$21;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$21;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn;->cordova:Lvpadn/q;

    check-cast v0, Lvpadn/ag;

    .line 1686
    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$21;->a:Lvpadn/p;

    iget-object v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$21;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$21;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lvpadn/ag;->cacheVideoByUrl(Lvpadn/p;Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    return-void
.end method
