.class Lcom/vpon/cordova/VponSDKPlugIn$24$1;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpon/cordova/VponSDKPlugIn$24;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn$24;)V
    .locals 0

    .prologue
    .line 2264
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 2266
    const-string v0, "VponSDKPlugIn"

    const-string v1, "pic cannot save!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :try_start_0
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v0, v0, Lcom/vpon/cordova/VponSDKPlugIn$24;->d:Lcom/vpon/cordova/VponSDKPlugIn;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$24$1;->a:Lcom/vpon/cordova/VponSDKPlugIn$24;

    iget-object v1, v1, Lcom/vpon/cordova/VponSDKPlugIn$24;->b:Lvpadn/p;

    const-string v2, "pic cannot save!"

    invoke-static {v0, v1, v2}, Lcom/vpon/cordova/VponSDKPlugIn;->a(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/p;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2272
    :goto_0
    return-void

    .line 2269
    :catch_0
    move-exception v0

    .line 2270
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
