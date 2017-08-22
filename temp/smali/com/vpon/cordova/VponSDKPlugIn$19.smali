.class Lcom/vpon/cordova/VponSDKPlugIn$19;
.super Ljava/lang/Object;
.source "VponSDKPlugIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/cordova/VponSDKPlugIn;->b(Lorg/json/JSONArray;Lvpadn/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;

.field final synthetic b:Lvpadn/p;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Z

.field final synthetic i:Lcom/vpon/cordova/VponSDKPlugIn;


# direct methods
.method constructor <init>(Lcom/vpon/cordova/VponSDKPlugIn;Lvpadn/af;Lvpadn/p;IIIILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->i:Lcom/vpon/cordova/VponSDKPlugIn;

    iput-object p2, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->a:Lvpadn/af;

    iput-object p3, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->b:Lvpadn/p;

    iput p4, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->c:I

    iput p5, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->d:I

    iput p6, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->e:I

    iput p7, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->f:I

    iput-object p8, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->g:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 694
    iget-object v0, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->a:Lvpadn/af;

    iget-object v1, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->b:Lvpadn/p;

    iget v2, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->c:I

    iget v3, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->d:I

    iget v4, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->e:I

    iget v5, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->f:I

    iget-object v6, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->g:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/vpon/cordova/VponSDKPlugIn$19;->h:Z

    invoke-virtual/range {v0 .. v7}, Lvpadn/af;->a(Lvpadn/p;IIIILjava/lang/String;Z)V

    .line 696
    return-void
.end method
