.class Lcom/vpon/cordova/VponSDKPlugIn$18;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->a(Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;

.field final synthetic b:Lvpadn/p;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/af;Lvpadn/p;ZZLjava/lang/String;I)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->g:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->a:Lvpadn/af;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->b:Lvpadn/p;

    iput-boolean p4, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->c:Z

    iput-boolean p5, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->d:Z

    iput-object p6, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->e:Ljava/lang/String;

    iput p7, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 591
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->a:Lvpadn/af;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->b:Lvpadn/p;

    iget-boolean v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->c:Z

    iget-boolean v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->d:Z

    iget-object v4, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->e:Ljava/lang/String;

    iget v5, p0, Lcom/vpon/cordova/VponSDKPlugIn$18;->f:I

    invoke-virtual/range {v0 .. v5}, Lvpadn/af;->a(Lvpadn/p;ZZLjava/lang/String;I)V

    .line 594
    return-void
.end method
